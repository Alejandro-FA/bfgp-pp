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
        explicit ParallelBFS(BFSFactory auto &&f, unsigned int num_threads)
            : _bfs_factory{std::forward<decltype(f)>(f)}, _num_threads{num_threads} {}

        // FIXME: We cannot use the roots in the parallel search until we have a way to create a deep copy of them
        [[nodiscard]] std::shared_ptr<Node> solve(std::vector<std::unique_ptr<Program>> roots = {}) override {
            // First generate multiple starting points to start a parallel search
            auto& start_bfs = make_bfs(_num_threads);
            auto possible_solution = start_bfs.solve(std::move(roots));
            if (possible_solution != nullptr) return possible_solution;

            // Then start a parallel search from each starting point
            std::vector<std::future<std::shared_ptr<Node>>> futures;

            while (!start_bfs.is_empty()) {
                auto& bfs{make_bfs()};
                bfs.add_node(start_bfs.select_node());
                auto future = std::async(std::launch::async, [&bfs]() { return bfs.solve(); });
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
        BFS& make_bfs(std::size_t max_queue_size = std::numeric_limits<std::size_t>::max()) {
            auto bfs{_bfs_factory()};
            bfs->set_max_queue_size(max_queue_size);
            bfs->set_stop_source(_stop_source);
            for (const auto &ef : _evaluation_functions) bfs->add_evaluation_function(ef->copy());
            bfs->set_verbose(false);
            _engines.push_back(std::move(bfs));
            return *_engines.back();
        }

        // const std::unique_ptr<GeneralizedPlanningProblem> _gpp_template; // Used to make copies of the GPP
        const std::function<std::unique_ptr<BFS>()> _bfs_factory;
        const unsigned int _num_threads{std::thread::hardware_concurrency()};
        std::vector<std::unique_ptr<BFS>> _engines; // needed to keep the BFS instances alive (in particular, their GPPs)
        std::stop_source _stop_source{};
    };
}

#endif //__SEARCH_PARALLEL_BEST_FIRST_SEARCH_H__
