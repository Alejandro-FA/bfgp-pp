#ifndef __SEARCH_PARALLEL_BEST_FIRST_SEARCH_H__
#define __SEARCH_PARALLEL_BEST_FIRST_SEARCH_H__

#include <future>
#include <vector>
#include <memory>
#include <thread>
#include <stop_token>
#include <concepts>
#include <shared_mutex>
#include "engine.h"
#include "best_first_search.h"

namespace search {
    template<typename F>
    concept GPPFactory = requires(F&& f) {
        requires std::invocable<F>;
        { std::invoke(std::forward<F>(f)) } -> std::same_as<std::unique_ptr<GeneralizedPlanningProblem>>;
    };



    class SearchWorker : public BFS {
    public:
        explicit SearchWorker(std::unique_ptr<theory::Theory> theory, std::unique_ptr<GeneralizedPlanningProblem> gpp,
                              std::size_t id, const std::vector<std::unique_ptr<SearchWorker>>& other_workers)
                : BFS{std::move(theory), std::move(gpp)}, _id{id}, _num_threads{other_workers.size()},
                _next_send_id{(id + 1) % other_workers.size()}, _other_workers{other_workers} {}

        [[nodiscard]] std::shared_ptr<Node> operator()() {
            return _other_workers[_id]->solve();
        }

        [[nodiscard]] bool is_empty() const override {
            std::shared_lock lock{_open_mutex};
            return BFS::is_empty();
        }

        [[nodiscard]] std::size_t open_size() const override {
            std::shared_lock lock{_open_mutex};
            return BFS::open_size();
        }

        void add_node(std::shared_ptr<Node> node) override {
            std::lock_guard lock{_open_mutex};
            BFS::add_node(std::move(node));
        }

        [[nodiscard]] std::shared_ptr<Node> select_node() override {
            std::lock_guard lock{_open_mutex};
            return BFS::select_node();
        }

        void reevaluate_queue() override {
            std::lock_guard lock{_open_mutex};
            BFS::reevaluate_queue();
        }

        [[nodiscard]] std::vector<std::shared_ptr<Node> > expand_node(Node* node) override {
            std::vector<std::shared_ptr<Node>> expanded_nodes {BFS::expand_node(node)};
            for (const auto& expanded_node : expanded_nodes) {
                const auto &other {_other_workers[_next_send_id]};
                other->add_node(expanded_node->copy_to(other->get_generalized_planning_problem()));
                _next_send_id = (_next_send_id + 1) % _num_threads;
            }
            return expanded_nodes;
        }

        // TODO: synchronize active instances

    private:
        std::size_t _id;
        std::size_t _num_threads;
        std::size_t _next_send_id;
        const std::vector<std::unique_ptr<SearchWorker>>& _other_workers;
        mutable std::shared_mutex _open_mutex;
    };



    class ParallelBFS : public Engine {
    public:
        /// \param num_threads Maximum number of threads to use
        /// \param gpp_factory Function to create new instances of the GeneralizedPlanningProblem to solve.
        explicit ParallelBFS(std::unique_ptr<theory::Theory> theory, unsigned int num_threads, GPPFactory auto &&gpp_factory)
                : Engine{std::move(theory)}, _num_threads {num_threads}, _gpp_factory {std::forward<decltype(gpp_factory)>(gpp_factory)} {
            for (unsigned int i = 0; i < _num_threads; ++i) make_bfs();
        }

        [[nodiscard]] std::shared_ptr<Node> solve(std::vector<std::unique_ptr<Program>> roots = {}) override {
            // Generate initial nodes (at least one root node per thread)
            auto& init_bfs {make_bfs()};
            init_bfs.set_open_size_limit(_num_threads * 10);
            auto possible_solution {init_bfs.solve(std::move(roots))};
            if (possible_solution != nullptr) return possible_solution;

            // Distribute the initial nodes among the threads
            unsigned int thread_idx = 0;
            while (not init_bfs.is_empty()) {
                auto gpp {_engines[thread_idx]->get_generalized_planning_problem()};
                _engines[thread_idx]->add_node(init_bfs.select_node()->copy_to(gpp));
                thread_idx = (thread_idx + 1) % _num_threads;
            }

            // Once each thread has its own initial nodes, start the parallel search
            std::vector<std::future<std::shared_ptr<Node>>> futures;
            for (unsigned int i = 0; i < _num_threads; ++i) {
                auto& bfs {*_engines[i]};
                auto future { std::async(std::launch::async, [&bfs]() { return bfs.solve(); }) };
                futures.push_back(std::move(future));
            }

            // Wait for all threads to finish and return the solution
            std::shared_ptr<Node> solution {nullptr};
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
            auto bfs {std::make_unique<BFS>(_theory->copy(), _gpp_factory())};
            bfs->set_stop_source(_stop_source);
            for (const auto &ef : _evaluation_functions) bfs->add_evaluation_function(ef->copy());
            bfs->set_verbose(false);
            _engines.push_back(std::move(bfs));
            return *_engines.back();
        }

        const unsigned int _num_threads {std::thread::hardware_concurrency()};
        const std::function<std::unique_ptr<GeneralizedPlanningProblem>()> _gpp_factory;
        std::vector<std::unique_ptr<BFS>> _engines; // needed to keep the BFS instances alive (in particular, their GPPs) // TODO: store in stack, not in heap
        std::stop_source _stop_source {};
    };
}

#endif //__SEARCH_PARALLEL_BEST_FIRST_SEARCH_H__
