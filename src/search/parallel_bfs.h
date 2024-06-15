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
        { std::invoke<F>(std::forward<F>(f)) } -> std::same_as<std::unique_ptr<BFS>>;
    };

    class ParallelBFS : public Engine {
    public:
        explicit ParallelBFS(BFSFactory auto &&f, unsigned int num_threads, unsigned int num_init_nodes)
            : _bfs_factory{std::forward<decltype(f)>(f)}, _num_threads{num_threads}, _num_init_nodes{num_init_nodes} {}

        // FIXME: We cannot use the roots in the parallel search until we have a way to create a deep copy of them
        [[nodiscard]] std::shared_ptr<Node> solve(std::vector<std::unique_ptr<Program>> roots = {}) override {
            std::size_t queue_size_limit = _num_init_nodes * _num_threads;
            std::size_t num_threads = _num_threads;
            std::vector<std::future<std::shared_ptr<Node>>> futures;

            for (unsigned int i = 0; i < _num_threads; ++i) {
                auto& bfs{make_bfs()};
                auto future = std::async(std::launch::async, [&bfs, queue_size_limit, num_threads, i]() {
                    // Start searching until the queue reaches a certain limit
                    // All threads will explore the same first nodes (currently unavoidable)
                    bfs.set_queue_size_limit(queue_size_limit);
                    auto possible_solution = bfs.solve(); // FIXME: Ideally, here we would use the roots for repair mode
                    if (possible_solution != nullptr) return possible_solution;

                    // Recover the _open queue from bfs and replace it with an empty one
                    std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node> >, NodeComparator> open;
                    bfs.swap_queue(open);

                    // Keep only a subset of the nodes such that each thread will have a queue with different nodes to explore
                    auto init_size = open.size();
                    for (std::size_t j = 0; j < init_size; ++j) {
                        auto node{open.top()};
                        open.pop();
                        if (j % num_threads == i) bfs.add_node(std::move(node));
                    }

                    // Keep exploring the exclusive nodes of this thread until a solution is found or there are no more nodes left
                    bfs.remove_queue_size_limit();
                    return bfs.solve();
                });
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

    private:
        BFS& make_bfs() {
            auto bfs{_bfs_factory()};
            bfs->set_stop_source(_stop_source);
            for (const auto &ef : _evaluation_functions) bfs->add_evaluation_function(ef->copy());
            bfs->set_verbose(false);
            _engines.push_back(std::move(bfs));
            return *_engines.back();
        }

        const std::function<std::unique_ptr<BFS>()> _bfs_factory;
        const unsigned int _num_threads{std::thread::hardware_concurrency()};
        const unsigned int _num_init_nodes{1}; // (minimum) number of initial nodes per thread
        std::vector<std::unique_ptr<BFS>> _engines; // needed to keep the BFS instances alive (in particular, their GPPs)
        std::stop_source _stop_source{};
    };
}

#endif //__SEARCH_PARALLEL_BEST_FIRST_SEARCH_H__
