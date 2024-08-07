cmake_minimum_required(VERSION 3.20)
project(structured_programming)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -O3")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -O3")

# In debug mode we want to enable thread sanitizer
if (CMAKE_BUILD_TYPE STREQUAL "Debug" AND CMAKE_SYSTEM_NAME STREQUAL "Linux")
    message(STATUS "Compiling with thread sanitizer for parallel debugging")
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=thread -fPIE -pie -fno-omit-frame-pointer -O2")
    set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fsanitize=thread -fPIE -pie -fno-omit-frame-pointer -O2")
endif()

include_directories(src)

add_executable(main.bin
        src/action.h
        src/utils/common.h
        src/expressions/conditions/condition.h
        src/domain.h
        src/expressions/expression.h
        src/generalized_domain.h
        src/generalized_planning_problem.h
        src/evaluation_functions/evaluation_function.h
        src/instance.h
        src/instructions/instruction.h
        src/expressions/effects/effect.h
        src/parser/parser.h
        src/program.h
        src/program_state.h
        src/state.h
        src/main.cpp
        src/program_translator.h
        src/utils/argument_parser.h
        src/factory_methods.h
        src/stats_info.h
        src/utils/bfgp_utils.h
        src/runner.h
        src/evaluation_functions/loop_counter.h
        src/evaluation_functions/inverse_loop_counter.h
        src/evaluation_functions/euclidean_distance.h
        src/evaluation_functions/max_nested_loops.h
        src/evaluation_functions/max_loop_lines.h
        src/evaluation_functions/loop_lines_counter.h
        src/expressions/conditions/different.h
        src/expressions/conditions/subtrack.h
        src/expressions/conditions/add.h
        src/expressions/conditions/equals.h
        src/expressions/conditions/lesser.h
        src/expressions/conditions/greater.h
        src/expressions/conditions/lesser_equal.h
        src/expressions/conditions/greater_equal.h
        #src/expressions/effects/bitvec/not.h
        #src/expressions/effects/bitvec/and.h
        #src/expressions/effects/bitvec/or.h
        #src/expressions/effects/bitvec/xor.h
        #src/expressions/effects/bitvec/shift_left.h
        #src/expressions/effects/bitvec/shift_right.h
        src/expressions/effects/assign.h
        src/expressions/effects/compare.h
        src/expressions/effects/subtrack_assign.h
        src/expressions/effects/add_assign.h
        src/instructions/planning_action.h
        src/instructions/ram/goto.h
        src/instructions/for.h
        src/instructions/end_for.h
        src/instructions/if.h
        src/instructions/end.h
        src/evaluation_functions/hamming_distance.h
        src/evaluation_functions/min_repeated_instructions.h
        src/evaluation_functions/num_empty_instructions.h
        src/evaluation_functions/jaccard_distance.h
        #src/instructions/bitvec/ite.h
        #src/instructions/bitvec/not.h
        #src/instructions/bitvec/ehad.h
        #src/instructions/bitvec/smol.h
        #src/instructions/bitvec/arba.h
        #src/instructions/bitvec/shesh.h
        #src/instructions/bitvec/and.h
        #src/instructions/bitvec/or.h
        #src/instructions/bitvec/xor.h
        #src/instructions/bitvec/add.h
        src/evaluation_functions/closest_hamming_distance.h
        #src/landmarks/landmark.h
        #src/landmarks/landmark_graph.h
        #src/evaluation_functions/landmark_count.h
        src/theories/theory.h
        src/theories/assembler.h
        src/theories/c_plus_plus.h
        #src/theories/bitvec.h
        src/variables/state_variable.h
        src/variables/constant_value.h
        src/variables/variable.h
        src/evaluation_functions/accumulated_cost.h
        src/evaluation_functions/distance_to_last_line.h
        src/search/node.h
        src/search/engine.h
        src/search/best_first_search.h
        src/search/parallel_worker.h
        src/search/parallel_bfs.h
        src/search/frontiers/frontier.h
        src/search/frontiers/thread_safe_frontier.h
        src/search/search_mediators/search_mediator.h
        src/search/search_mediators/base_mediator.h
        src/search/search_mediators/independent_queues_mediator.h
        src/search/search_mediators/distribute_promising_mediator.h
        src/search/search_mediators/pgp_manager.h
)

enable_testing()
add_subdirectory(tests)
