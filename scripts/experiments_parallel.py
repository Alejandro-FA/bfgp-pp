import argparse
import json
import logging
import os
import multiprocessing as mp
from tqdm import tqdm
from typing import List
from dataclasses import dataclass
import subprocess
from abc import ABC, abstractmethod
import shutil


def execute_command(command: List[str], **kwargs) -> int:
    cwd = kwargs["cwd"] if "cwd" in kwargs else os.getcwd()
    output_dir = kwargs["output_dir"] if "output_dir" in kwargs else "."
    shell = kwargs["shell"] if "shell" in kwargs else False
    stdout = open(output_dir + "/" + kwargs["stdout"], 'w') if "stdout" in kwargs else None
    stderr = open(output_dir + "/" + kwargs["stderr"], 'w') if "stderr" in kwargs else None
    #logging.debug(f'Executing "{" ".join(map(str, command))}" on directory "{cwd}"')
    #print(f'Executing "{" ".join(map(str, command))}" on directory "{cwd}"')
    print(f'Executing "{command}" on directory "{cwd}"')
    if stdout:
        logging.debug(f'Standard output redirected to "{stdout.name}"')
    if stderr:
        logging.debug(f'Standard error redirected to "{stderr.name}"')

    ret_code = subprocess.call(command, cwd=cwd, stdout=stdout, stderr=stderr, shell=shell)

    if stdout:
        stdout.close()
    if stdout is not None and os.path.getsize(stdout.name) == 0:  # Delete error log if empty
        os.remove(stdout.name)
    if stderr:
        stderr.close()
    if stderr is not None and os.path.getsize(stderr.name) == 0:  # Delete error log if empty
        os.remove(stderr.name)

    return ret_code

class Task(ABC):
    @abstractmethod
    def get_command(self) -> str:
        pass

@dataclass(frozen=True)
class GeneratorTask(Task):
    domain: str
    in_folder: str
    out_folder: str
    args: str

    def get_command(self) -> str:
        return (f"PYTHONHASHSEED=0 python {self.in_folder}/{self.domain}.py {self.args} "
                f"-o {self.out_folder}/{self.domain}/")

@dataclass(frozen=True)
class SynthesisTask(Task):
    task_name: str
    theory: str
    lines: int
    folder: str
    eval_funcs: List
    extra_pointers: int = 0
    threads: int = 1
    pgp: bool = False
    parallel_strategy: str = "independent_queues"

    def get_output_file(self):
        f = self.folder.split("/")
        pgp = "_pgp" if self.pgp else ""
        funcs = '_'.join(self.eval_funcs[0].split())
        return f"-o experiments/{'/'.join(f[1:-2])}/{self.task_name}/{f[-2]}_{self.theory}_{self.lines}{pgp}_{funcs}_s{self.extra_pointers}_n{self.threads}"

    def get_command(self) -> str:
        return f"/bin/bash scripts/time_memory.sh ./main.bin -m synthesis -t {self.theory} -l {self.lines} -pgp {self.pgp} " \
               f"-f {self.folder} -e {' '.join(self.eval_funcs)} -s {self.extra_pointers} -n {self.threads} -ps {self.parallel_strategy} {self.get_output_file()}"

@dataclass(frozen=True)
class ValidationTask(Task):
    folder: str
    program: str
    extra_pointers: int = 0
    infinite_detection: str = "False"

    def get_command(self) -> str:
        return f"/bin/bash scripts/time_memory.sh ./main.bin -m validation-prog -t assembler -p {self.program} " \
               f"-f {self.folder} -s {self.extra_pointers} -inf {self.infinite_detection}"

def sequential_execution(tasks: List[Task]):
	print(f"Sequential execution of {len(tasks)} tasks")
	
	for task in tasks:
		execute_command(command=task.get_command(), shell=True)

def parallel_execution(tasks: List[Task]):
    print(f"Parallelizing {len(tasks)} tasks with {mp.cpu_count()} processors")
    pool = mp.Pool(mp.cpu_count())
    pbar = tqdm(total=len(tasks), bar_format='{percentage:3.0f}%|{bar:10}{r_bar}')

    def collect_result(result):
        pbar.update()

    def print_error(result):
        print(f"\rError callback: {result}\n")

    for task in tasks:
        pool.apply_async(execute_command,
                         kwds={'command': task.get_command(), 'shell': True},
                         callback=collect_result,
                         error_callback=print_error)
    pool.close()
    pool.join()
    pbar.close()


def generate_instances(json_file: str):
    with open(json_file) as json_data:
        data = json.load(json_data)
    in_folder = data["in_folder"]
    out_folder = data["out_folder"]

    # Remove old and create all new domain dirs
    for dom in data["domains"]:
        shutil.rmtree(f"{out_folder}/{dom['name']}", ignore_errors=True)
        os.makedirs(f"{out_folder}/{dom['name']}", exist_ok=True)

    tasks = [GeneratorTask(domain=dom["name"], in_folder=in_folder, out_folder=out_folder, args=dom["args"])
             for dom in data['domains']]
    parallel_execution(tasks=tasks)

def experiment_1():
    """Table 1 - Comparison with best combinations of AIJ24 - Table 4"""
    domains = ["find", "triangular_sum", "reverse", "select", "fibonacci", "gripper", "sorting", "corridor", "visitall"]
    lines = [4, 5, 7, 7, 7, 8, 9, 10, 13]
    extra_pointers = [0, 0, 0, 1, 0, 0, 0, 0, 0]
    problems = [f"domains/aij23/synthesis/{domain}/" for domain in domains]
    eval_funcs = ["mri ed", "ed mri"]
    #problems = [f"domains/aij23/synthesis_comparison/{domain}/" for domain in domains]
    #eval_funcs = ["lc ed", "ed lc", "nei ed", "ed nei", "mri ed", "ed mri", "mnl ed", "ed mnl"]
    parallel_execution(tasks=[SynthesisTask("experiment_1", "assembler", lines[idx], prob, [ef], extra_pointers[idx], 1)
                              for ef in eval_funcs for idx, prob in enumerate(problems)])
    #sequential_execution(tasks=[SynthesisTask(lines[idx], prob, [ef], extra_pointers[idx], 1)
    #                            for ef in eval_funcs for idx, prob in enumerate(problems)])
    
def experiment_2():
    """Table 2 - Using [ed,mri], evaluate the scalability performance for threads in [1, 2, 4, 8, 16] for assembler theory and different parallel strategies"""
    domains = ["find", "triangular_sum", "reverse", "select", "fibonacci", "gripper", "sorting", "corridor", "visitall"]
    lines = [4, 5, 7, 7, 7, 8, 9, 10, 13]
    extra_pointers = [0, 0, 0, 1, 0, 0, 0, 0, 0]
    problems = [f"domains/aij23/synthesis/{domain}/" for domain in domains]
    eval_funcs = ["ed mri"]
    sequential_execution(tasks=[SynthesisTask("experiment_2a", "assembler", lines, problems, [ef], extra_pointers, 1, False) for ef in eval_funcs])
    sequential_execution(tasks=[SynthesisTask("experiment_2b", "assembler", lines, problems, [ef], extra_pointers, t, False, "independent_queues") for ef in eval_funcs for t in [2, 4, 8, 16]])
    sequential_execution(tasks=[SynthesisTask("experiment_2c", "assembler", lines, problems, [ef], extra_pointers, t, False, "distribute_all") for ef in eval_funcs for t in [2, 4, 8, 16]])
    sequential_execution(tasks=[SynthesisTask("experiment_2d", "assembler", lines, problems, [ef], extra_pointers, t, False, "distribute_promising") for ef in eval_funcs for t in [2, 4, 8, 16]])
                               
def experiment_3():
    """Table 3 - Using [ed,mri], evaluate the scalability performance for threads in [1, 2, 4, 8, 16] for assembler theory with pgp and different parallel strategies"""
    domains = ["find", "triangular_sum", "reverse", "select", "fibonacci", "gripper", "sorting", "corridor", "visitall"]
    lines = [4, 5, 7, 7, 7, 8, 9, 10, 13]
    extra_pointers = [0, 0, 0, 1, 0, 0, 0, 0, 0]
    problems = [f"domains/aij23/synthesis/{domain}/" for domain in domains]
    eval_funcs = ["ed mri"]
    sequential_execution(tasks=[SynthesisTask("experiment_3a", "assembler", lines, problems, [ef], extra_pointers, 1, True) for ef in eval_funcs])
    sequential_execution(tasks=[SynthesisTask("experiment_3b", "assembler", lines, problems, [ef], extra_pointers, t, True, "independent_queues") for ef in eval_funcs for t in [2, 4, 8, 16]])
    sequential_execution(tasks=[SynthesisTask("experiment_3c", "assembler", lines, problems, [ef], extra_pointers, t, True, "distribute_all") for ef in eval_funcs for t in [2, 4, 8, 16]])
    sequential_execution(tasks=[SynthesisTask("experiment_3d", "assembler", lines, problems, [ef], extra_pointers, t, True, "distribute_promising") for ef in eval_funcs for t in [2, 4, 8, 16]])

def experiment_4():
    """Table 4 - Using [ilc,ed], evaluate the scalability performance for threads in [1, 2, 4, 8, 16] for CPP theory and different parallel strategies"""
    domains = ["find", "triangular_sum", "reverse", "select", "fibonacci", "gripper", "sorting", "corridor", "visitall"]
    lines = [4, 5, 7, 7, 7, 8, 9, 11, 14]
    extra_pointers = [0, 0, 0, 1, 0, 0, 0, 0, 0]
    problems = [f"domains/aij23/synthesis/{domain}/" for domain in domains]
    eval_funcs = ["ilc ed"]
    sequential_execution(tasks=[SynthesisTask("experiment_4a", "cpp", lines, problems, [ef], extra_pointers, 1, False) for ef in eval_funcs])
    sequential_execution(tasks=[SynthesisTask("experiment_4b", "cpp", lines, problems, [ef], extra_pointers, t, False, "independent_queues") for ef in eval_funcs for t in [2, 4, 8, 16]])
    sequential_execution(tasks=[SynthesisTask("experiment_4c", "cpp", lines, problems, [ef], extra_pointers, t, False, "distribute_all") for ef in eval_funcs for t in [2, 4, 8, 16]])
    sequential_execution(tasks=[SynthesisTask("experiment_4d", "cpp", lines, problems, [ef], extra_pointers, t, False, "distribute_promising") for ef in eval_funcs for t in [2, 4, 8, 16]])

def experiment_5():
    """Table 4 - Using [ilc,ed], evaluate the scalability performance for threads in [1, 2, 4, 8, 16] for CPP theory with pgp and different parallel strategies"""
    domains = ["find", "triangular_sum", "reverse", "select", "fibonacci", "gripper", "sorting", "corridor", "visitall"]
    lines = [4, 5, 7, 7, 7, 8, 9, 11, 14]
    extra_pointers = [0, 0, 0, 1, 0, 0, 0, 0, 0]
    problems = [f"domains/aij23/synthesis/{domain}/" for domain in domains]
    eval_funcs = ["ilc ed"]
    sequential_execution(tasks=[SynthesisTask("experiment_4a", "cpp", lines, problems, [ef], extra_pointers, 1, True) for ef in eval_funcs])
    sequential_execution(tasks=[SynthesisTask("experiment_4b", "cpp", lines, problems, [ef], extra_pointers, t, True, "independent_queues") for ef in eval_funcs for t in [2, 4, 8, 16]])
    sequential_execution(tasks=[SynthesisTask("experiment_4c", "cpp", lines, problems, [ef], extra_pointers, t, True, "distribute_all") for ef in eval_funcs for t in [2, 4, 8, 16]])
    sequential_execution(tasks=[SynthesisTask("experiment_4d", "cpp", lines, problems, [ef], extra_pointers, t, True, "distribute_promising") for ef in eval_funcs for t in [2, 4, 8, 16]])
    

def main():
    #parser = argparse.ArgumentParser(description='Executing the BFGP over all listed GP problems with a given configuration')
    #parser.add_argument("-c", "--config_file", type=str, required=True)
    #args = parser.parse_args()
    #config_file = args.config_file

    # generate_instances("scripts/synthesis_aij23.json")
    # generate_instances("scripts/validation_aij23.json")

    # experiment_1()
    # experiment_2()
    # experiment_3()
    # experiment_4()
    experiment_5()

if __name__ == "__main__":
    main()
