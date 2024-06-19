#ifndef __SEARCH_TEST_PARALLEL_BEST_FIRST_SEARCH_H__
#define __SEARCH_TEST_PARALLEL_BEST_FIRST_SEARCH_H__

#include <future>
#include <vector>
#include <memory>
#include <thread>
#include <stop_token>
#include <concepts>
#include "engine.h"
#include "best_first_search.h"
#include "parallel_bfs.h"

namespace search {
    class TestParallelBFS : public Engine {
    public:
        explicit TestParallelBFS(BFSFactory auto &&f, RootsFactory auto &&g, unsigned int num_threads, unsigned int num_init_nodes = 10)
            : _bfs_factory{std::forward<decltype(f)>(f)}, _roots_factory{std::forward<decltype(g)>(g)},
            _num_threads{num_threads}, _num_init_nodes{num_init_nodes} {
            for (unsigned int i = 0; i < _num_threads; ++i) make_bfs();
        }

        [[nodiscard]] std::shared_ptr<Node> solve(std::vector<std::unique_ptr<Program>> roots = {}) override {
            // Generate initial nodes
            auto& init_bfs{make_bfs()};
            init_bfs.set_queue_size_limit(_num_init_nodes * _num_threads);
            auto possible_solution = init_bfs.solve(std::move(roots));
            if (possible_solution != nullptr) return possible_solution;

            // Distribute the initial nodes among the threads
            unsigned int thread_idx = 0;
            while (not init_bfs.is_empty()) {
                const auto gd = _engines[thread_idx]->get_generalized_planning_problem()->get_generalized_domain();
                // _engines[thread_idx]->add_node(init_bfs.select_node());
                _engines[thread_idx]->add_node(init_bfs.select_node()->clone(gd));
                thread_idx = (thread_idx + 1) % _num_threads;
            }

            // Once each thread has its own initial nodes, start the parallel search
            std::vector<std::future<std::shared_ptr<Node>>> futures;
            for (unsigned int i = 0; i < _num_threads; ++i) {
                auto& bfs{*_engines[i]};
                auto future = std::async(
                    std::launch::async,
                    [&bfs]() { return bfs.solve(); }
                );
                futures.push_back(std::move(future));
            }

            // Wait for all threads to finish and return the solution
            std::shared_ptr<Node> solution{nullptr};
            for (auto &future: futures) // Ensure that all threads have finished to avoid data races
                if (auto result = future.get(); result != nullptr) solution = result;
            return solution;
        }

        [[nodiscard]] value_t get_expanded() const override {
            value_t expanded = 0;
            for (const auto &bfs : _engines) expanded += bfs->get_expanded();
            return expanded;
        }

        [[nodiscard]] value_t get_evaluated() const override {
            value_t evaluated = 0;
            for (const auto &bfs : _engines) evaluated += bfs->get_evaluated();
            return evaluated;
        }

        void add_evaluation_function(std::unique_ptr<const evaluation_functions::EvaluationFunction> new_ef ) override {
            for (const auto &bfs : _engines) bfs->add_evaluation_function(new_ef->copy());
            Engine::add_evaluation_function(std::move(new_ef));
        }

    private:
        BFS& make_bfs() {
            auto bfs{_bfs_factory()};
            bfs->set_stop_source(_stop_source);
            for (const auto &ef : _evaluation_functions) bfs->add_evaluation_function(ef->copy());
            bfs->set_verbose(false);
            _engines.push_back(std::move(bfs));
            return *_engines.back();
        }

        const std::function<std::unique_ptr<BFS>()> _bfs_factory; // Function to generate a new BFS instance with its own GPP
        const std::function<std::vector<std::unique_ptr<Program>>(GeneralizedPlanningProblem *)> _roots_factory; // Function to read and generate roots for a given GPP
        const unsigned int _num_threads{std::thread::hardware_concurrency()};
        const unsigned int _num_init_nodes{10}; // (minimum) number of initial search nodes per thread
        std::vector<std::unique_ptr<BFS>> _engines; // needed to keep the BFS instances alive (in particular, their GPPs)
        std::stop_source _stop_source{};
    };
}

#endif //__SEARCH_TEST_PARALLEL_BEST_FIRST_SEARCH_H__
