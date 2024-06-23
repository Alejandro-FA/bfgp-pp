#ifndef __SEARCH_PARALLEL_WORKER_H__
#define __SEARCH_PARALLEL_WORKER_H__

#include "best_first_search.h"
#include "search_mediators/search_mediator.h"

namespace search {
    /// Search engine that can solve GPP problems in multithreaded environments.
    /// All queue operations are protected by a mutex, so it can safely receive work from other workers.
    /// If a common stop_source is set to multiple workers (with `BFS::set_stop_source`), each worker can cooperatively
    /// interrupt other workers if it finds a solution.
    /// Communication with other threads is delegated to a SearchMediator, which is responsible for distributing
    /// work and knowing how many workers are inactive.
    /// Once a worker has no more nodes in its queue, it will wait until more nodes arrive or until the search is
    /// interrupted. If all workers are inactive, the search is interrupted.
    class ParallelWorker : public BFS {
    public:
        explicit ParallelWorker(std::unique_ptr<theory::Theory> theory, std::unique_ptr<GeneralizedPlanningProblem> gpp,
                              std::size_t id, SearchMediator& mediator)
                : BFS{std::move(theory), std::move(gpp)}, _id{id}, _mediator{mediator} {}

        [[nodiscard]] bool is_empty() const override {
            std::shared_lock lock{_open_mutex};
            return BFS::is_empty();
        }

        [[nodiscard]] std::size_t open_size() const override {
            std::shared_lock lock{_open_mutex};
            return BFS::open_size();
        }

        /// When a new node is ready to be added, the worker delegates the decision of what to do to the mediator.
        /// The mediator can either add the node the worker's _open, or to send it to another worker.
        void add_node(std::shared_ptr<Node> node) override {
            _mediator.distribute_node(std::move(node), _id);
        }

        /// Directly add a node to its own queue. The SearchMediator is in charge of calling this method.
        void receive_node(std::shared_ptr<Node> node) {
            {
                std::scoped_lock lock{_open_mutex};
                if (BFS::is_empty()) _mediator.notify_active(_id); // We use BFS::is_empty instead of is_empty to avoid locking the same mutex twice (deadlock)
                BFS::add_node(std::move(node));
            }
            _open_cv.notify_one();
        }

        [[nodiscard]] std::shared_ptr<Node> select_node() override {
            std::scoped_lock lock{_open_mutex};
            return BFS::select_node();
        }

        void reevaluate_queue() override {
            std::scoped_lock lock{_open_mutex};
            BFS::reevaluate_queue();
        }

        [[nodiscard]] std::shared_ptr<Node> solve(std::vector<std::unique_ptr<Program>> roots = {}) override {
            while (not _stop_source.stop_requested()) {
                if (_verbose) std::cout << "[DEBUG] Worker " + std::to_string(_id) + " starts searching.\n";
                std::shared_ptr<Node> solution {BFS::solve()};
                if (solution != nullptr) {
                    if (_verbose) std::cout << "[DEBUG] Worker " + std::to_string(_id) + " found a SOLUTION!\n";
                    return solution;
                } else if (_verbose) std::cout << "[DEBUG] Worker " + std::to_string(_id) + " did not find a solution.\n";

                // Wait until more work arrives, until a solution is found or until all threads are inactive
                std::unique_lock lock{_open_mutex};
                if (BFS::is_empty()) {
                    _mediator.notify_inactive(_id);
                    if (_mediator.all_inactive()) _stop_source.request_stop();
                    if (_verbose) std::cout << "[DEBUG] Worker " + std::to_string(_id) + " is waiting to receive nodes.\n";
                }
                _open_cv.wait(lock, _stop_source.get_token(), [this] { return not BFS::is_empty(); });
            }
            if (_verbose) std::cout << "[DEBUG] Worker " + std::to_string(_id) + " has been interrupted.\n";
            return nullptr;
        };

        // TODO: synchronize active instances

    private:
        mutable std::shared_mutex _open_mutex;
        mutable std::condition_variable_any _open_cv;
        std::size_t _id;
        SearchMediator& _mediator; // As long as workers are owned by the mediator, this reference will be valid (because the mediator will always outlive the workers).
    };
}

#endif //__SEARCH_PARALLEL_WORKER_H__
