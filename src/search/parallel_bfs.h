//
// Created by Alejandro Fernández on 06/06/2024.
//

#ifndef STRUCTURED_PROGRAMMING_PARALLEL_BFS_H
#define STRUCTURED_PROGRAMMING_PARALLEL_BFS_H

#include <future>
#include <vector>
#include <memory>
#include <thread>
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

        [[nodiscard]] std::shared_ptr<Node> solve(std::vector<std::unique_ptr<Program>> roots = {}) override {
            auto &bfs = make_bfs();
            return bfs.solve(std::move(roots));
        }

        [[nodiscard]] value_t get_expanded() const override {
            value_t expanded = 0;
            for (const auto &bfs : _bfs) expanded += bfs->get_expanded();
            return expanded;
        }

        [[nodiscard]] value_t get_evaluated() const override {
            value_t evaluated = 0;
            for (const auto &bfs : _bfs) evaluated += bfs->get_evaluated();
            return evaluated;
        }

    private:
        BFS &make_bfs() {
            auto bfs{_bfs_factory()};
            for (const auto &ef : _evaluation_functions) bfs->add_evaluation_function(ef->copy());
            bfs->set_verbose(false);
            _bfs.push_back(std::move(bfs));
            return *_bfs.back();
        }

        // const std::unique_ptr<GeneralizedPlanningProblem> _gpp_template; // Used to make copies of the GPP
        const std::function<std::unique_ptr<BFS>()> _bfs_factory;
        const unsigned int _num_threads{std::thread::hardware_concurrency()};
        std::vector<std::unique_ptr<BFS>> _bfs; // needed to keep the BFS instances alive (in particular, their GPPs)
    };

    // template<Searchable State, std::derived_from<BaseTransitionModel<State>> TM>
    // [[nodiscard]] std::shared_ptr<Node<State>> async_start_bfs(const Problem<State, TM> &problem) {
    //     std::deque<std::shared_ptr<Node<State>>> frontier{std::make_shared<Node<State>>(problem.initial())};
    //     unsigned int min_starting_points = std::thread::hardware_concurrency() * 4;
    //
    //     // First fill the frontier with enough starting points
    //     auto possible_solution = detail::bfs_with_limit(frontier, problem, min_starting_points);
    //     if (possible_solution != nullptr) return possible_solution;
    //
    //     // Then start a parallel search from each starting point
    //     std::vector<std::future<std::shared_ptr<Node<State>>>> futures;
    //     std::stop_source stop_source{};
    //
    //     while (!frontier.empty()) {
    //         auto future = std::async(std::launch::async, [&problem, stop_source](std::shared_ptr<Node<State>> node) {
    //             return detail::interruptible_bfs(std::move(node), problem, stop_source);
    //         }, frontier.front());
    //         frontier.pop_front();
    //         futures.push_back(std::move(future));
    //     }
    //
    //     std::shared_ptr<Node<State>> solution{nullptr};
    //     for (auto &future: futures) // Ensure that all threads have finished to avoid data races
    //         if (auto result = future.get(); result != nullptr) solution = result;
    //     return solution;
    // }
}

#endif //STRUCTURED_PROGRAMMING_PARALLEL_BFS_H
