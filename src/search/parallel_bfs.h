#ifndef __SEARCH_PARALLEL_BEST_FIRST_SEARCH_H__
#define __SEARCH_PARALLEL_BEST_FIRST_SEARCH_H__

#include <future>
#include <vector>
#include <memory>
#include <thread>
#include <stop_token>
#include <concepts>
#include "engine.h"
#include "best_first_search.h"

namespace search {
    template<typename F>
    concept BFSFactory = requires(F&& f) {
        requires std::invocable<F>;
        { std::invoke(std::forward<F>(f)) } -> std::same_as<std::unique_ptr<BFS>>;
    };

    template<typename F>
    concept RootsFactory = requires(F&& f, GeneralizedPlanningProblem *gpp) {
        requires std::invocable<F, GeneralizedPlanningProblem *>;
        { std::invoke(std::forward<F>(f), gpp) } -> std::same_as<std::vector<std::unique_ptr<Program>>>;
    };

    class ParallelBFS : public Engine {
    public:
        explicit ParallelBFS(BFSFactory auto &&f, RootsFactory auto &&g, unsigned int num_threads, unsigned int num_init_nodes = 10)
            : _bfs_factory{std::forward<decltype(f)>(f)}, _roots_factory{std::forward<decltype(g)>(g)},
            _num_threads{num_threads}, _num_init_nodes{num_init_nodes} {
            for (unsigned int i = 0; i < _num_threads; ++i) make_bfs();
        }

        [[nodiscard]] std::shared_ptr<Node> solve(std::vector<std::unique_ptr<Program>> roots = {}) override {
            std::size_t queue_size_limit = _num_init_nodes * _num_threads;
            std::vector<std::future<std::shared_ptr<Node>>> futures;

            for (unsigned int i = 0; i < _num_threads; ++i) {
                auto& bfs{*_engines[i]};
                auto copied_roots = roots.empty() ? std::vector<std::unique_ptr<Program>>{} : _roots_factory(bfs.get_generalized_planning_problem());
                auto future = std::async(std::launch::async, [&bfs, queue_size_limit, i,  n{_num_threads}](std::vector<std::unique_ptr<Program>> r) {
                    // Start searching until the queue reaches a certain limit
                    // All threads will explore the same first nodes (currently unavoidable)
                    bfs.set_queue_size_limit(queue_size_limit);
                    auto possible_solution = bfs.solve(std::move(r));
                    if (possible_solution != nullptr) return possible_solution;

                    // Recover the _open queue from bfs and replace it with an empty one
                    std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node> >, NodeComparator> open;
                    bfs.swap_queue(open);

                    // Keep only a subset of the nodes such that each thread will have a queue with different nodes to explore
                    auto init_size = open.size();
                    for (std::size_t j = 0; j < init_size; ++j) {
                        auto node{open.top()};
                        open.pop();
                        if (j % n == i) bfs.add_node(std::move(node));
                    }

                    // Keep exploring the exclusive nodes of this thread until a solution is found or there are no more nodes left
                    bfs.remove_queue_size_limit();
                    return bfs.solve();
                }, std::move(copied_roots));
                futures.push_back(std::move(future));
            }

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

#endif //__SEARCH_PARALLEL_BEST_FIRST_SEARCH_H__
