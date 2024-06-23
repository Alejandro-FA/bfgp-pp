#ifndef __SEARCH_PARALLEL_BEST_FIRST_SEARCH_H__
#define __SEARCH_PARALLEL_BEST_FIRST_SEARCH_H__

#include <future>
#include <vector>
#include <memory>
#include <thread>
#include <stop_token>
#include <concepts>
#include <shared_mutex>
#include <condition_variable>
#include "engine.h"
#include "best_first_search.h"
#include "search_mediators/base_mediator.h"
#include "parallel_worker.h"

namespace search {
    template<typename F>
    concept GPPFactory = requires(F&& f) {
        requires std::invocable<F>;
        { std::invoke(std::forward<F>(f)) } -> std::same_as<std::unique_ptr<GeneralizedPlanningProblem>>;
    };


    class ParallelBFS : public Engine {
    public:
        /// \param num_threads Maximum number of threads to use
        /// \param gpp_factory Function to create new instances of the GeneralizedPlanningProblem to solve.
        explicit ParallelBFS(std::unique_ptr<theory::Theory> theory, GPPFactory auto &&gpp_factory,
                             std::unique_ptr<SearchMediator> mediator, std::size_t num_threads,
                             std::size_t init_nodes_per_thread = 1)
                : Engine{std::move(theory)}, _gpp_factory{std::forward<decltype(gpp_factory)>(gpp_factory)},
                _mediator{std::move(mediator)}, _num_threads{num_threads}, _init_nodes_per_thread{init_nodes_per_thread} {
            assert(_num_threads > 0);
            assert(_init_nodes_per_thread > 0);
            _mediator->set_workers(create_workers());
            _init_bfs = std::make_unique<BFS>(_theory->copy(), _gpp_factory());
            _init_bfs->set_verbose(false);
            _init_bfs->set_open_size_limit(_num_threads * _init_nodes_per_thread);
        }

        [[nodiscard]] std::shared_ptr<Node> solve(std::vector<std::unique_ptr<Program>> roots = {}) override {
            // Generate initial nodes (at least one root node per thread) with a normal BFS
            auto possible_solution {_init_bfs->solve(std::move(roots))};
            if (possible_solution != nullptr) return possible_solution;

            // Distribute the initial nodes among the threads
            const auto& workers {_mediator->get_workers()};
            unsigned int thread_idx = 0;
            while (not _init_bfs->is_empty()) {
                auto gpp {workers[thread_idx]->get_generalized_planning_problem()};
                workers[thread_idx]->receive_node(_init_bfs->select_node()->copy_to(gpp));
                thread_idx = (thread_idx + 1) % _num_threads;
            }

            // Once each thread has its own initial nodes, start the parallel search
            std::vector<std::future<std::shared_ptr<Node>>> futures;
            for (const auto& worker : workers) {
                auto future { std::async(std::launch::async, [&worker]() { return worker->solve(); }) };
                futures.push_back(std::move(future));
            }

            // Wait for all threads to finish (to avoid data races or other problems) and return the solution
            std::shared_ptr<Node> solution {nullptr};
            for (auto &future: futures) // Calling future.get() ensures that all threads have finished
                if (auto result = future.get(); result != nullptr) solution = result;
            return solution;
        }

        [[nodiscard]] value_t get_expanded() const override {
            value_t expanded = 0;
            for (const auto &w : _mediator->get_workers()) expanded += w->get_expanded();
            expanded += _init_bfs->get_expanded();
            return expanded;
        }

        [[nodiscard]] value_t get_evaluated() const override {
            value_t evaluated = 0;
            for (const auto &w : _mediator->get_workers()) evaluated += w->get_evaluated();
            evaluated += _init_bfs->get_evaluated();
            return evaluated;
        }

        void add_evaluation_function(std::unique_ptr<const evaluation_functions::EvaluationFunction> new_ef ) override {
            Engine::add_evaluation_function(std::move(new_ef));
            for (const auto &w : _mediator->get_workers()) w->add_evaluation_function(_evaluation_functions.back()->copy());
            _init_bfs->add_evaluation_function(_evaluation_functions.back()->copy());
        }

        void set_verbose(bool verbose) override {
            Engine::set_verbose(verbose);
            for (const auto &w : _mediator->get_workers()) w->set_verbose(verbose);
            _init_bfs->set_verbose(verbose);
        }

    private:
        [[nodiscard]] std::vector<std::unique_ptr<ParallelWorker>> create_workers() {
            std::vector<std::unique_ptr<ParallelWorker>> workers(_num_threads);
            for (std::size_t i = 0; i < _num_threads; ++i) {
                workers[i] = std::make_unique<ParallelWorker>(_theory->copy(), _gpp_factory(), i, *_mediator);
                for (const auto &ef : _evaluation_functions) workers[i]->add_evaluation_function(ef->copy());
                workers[i]->set_verbose(_verbose);
            }
            return workers;
        }

    private:
        const std::function<std::unique_ptr<GeneralizedPlanningProblem>()> _gpp_factory;
        const std::unique_ptr<SearchMediator> _mediator {std::make_unique<BaseMediator>()};
        const std::size_t _num_threads {std::thread::hardware_concurrency()};
        const std::size_t _init_nodes_per_thread {1};
        std::unique_ptr<BFS> _init_bfs;
    };
}

#endif //__SEARCH_PARALLEL_BEST_FIRST_SEARCH_H__
