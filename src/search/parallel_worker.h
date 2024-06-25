#ifndef __SEARCH_PARALLEL_WORKER_H__
#define __SEARCH_PARALLEL_WORKER_H__

#include "best_first_search.h"
#include "search_mediators/search_mediator.h"
#include "frontiers/thread_safe_frontier.h"

namespace search {
    /// Search engine that can solve GPP problems in multithreaded environments.
    /// If a common stop_source is set to multiple workers (with `BFS::set_stop_source`), each worker can cooperatively
    /// interrupt other workers if it finds a solution.
    /// Communication with other threads is delegated to a SearchMediator, which is responsible for distributing
    /// work and knowing how many workers are inactive.
    /// Once a worker has no more nodes in its queue, it will wait until more nodes arrive or until the search is
    /// interrupted. If all workers are inactive, the search is interrupted.
    class ParallelWorker : public BFS {
    public:
        /// ParalllelWorkers should only be created by a SearchMediator instances.
        explicit ParallelWorker(std::unique_ptr<theory::Theory> theory, std::unique_ptr<GeneralizedPlanningProblem> gpp,
                              std::size_t id, SearchMediator& mediator)
                : BFS{std::move(theory), std::move(gpp), std::make_unique<ThreadSafeFrontier>(), id}, _mediator{mediator} {}

        [[nodiscard]] std::shared_ptr<Node> solve(std::vector<std::unique_ptr<Program>> roots = {}) override {
            while (not _stop_source.stop_requested()) {
                if (_verbose) std::cout << "[DEBUG] Worker " + std::to_string(_id) + " starts searching.\n";
                std::shared_ptr<Node> solution {BFS::solve()};
                if (solution != nullptr) {
                    if (_verbose) std::cout << "[DEBUG] Worker " + std::to_string(_id) + " found a SOLUTION!\n";
                    return solution;
                }

                // Wait until more work arrives, or until an interruption is requested (because of solution found or search finished).
                if (_open->empty()) {
                    _mediator.notify_inactive(_id);
                    if (_mediator.all_inactive()) _stop_source.request_stop();
                    if (_verbose) std::cout << "[DEBUG] Worker " + std::to_string(_id) + " is waiting to receive nodes.\n";
                }
                dynamic_cast<ThreadSafeFrontier&>(*_open).wait_until_not_empty(_stop_source.get_token());
            }
            if (_verbose) std::cout << "[DEBUG] Worker " + std::to_string(_id) + " has been interrupted.\n";
            return nullptr;
        };

    protected:
        /// When a new node is ready to be added, the worker delegates the decision of what to do to the mediator.
        /// The mediator can either add the node the worker's _open, or to send it to another worker.
        void add_node_request(std::shared_ptr<Node> node) override {
            _mediator.distribute_node(std::move(node), _id);
        }

        void activate_instance_request(id_type instance_idx) override {
            _mediator.activate_and_reevaluate(instance_idx);
        }

    private:
        SearchMediator& _mediator; // As long as workers are owned by the mediator, this reference will be valid (because the mediator will always outlive the workers).
    };
}

#endif //__SEARCH_PARALLEL_WORKER_H__
