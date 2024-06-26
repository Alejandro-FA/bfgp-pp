#ifndef __SEARCH_PARALLEL_WORKER_H__
#define __SEARCH_PARALLEL_WORKER_H__

#include <syncstream>
#include <shared_mutex>
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
        /// ParalllelWorker instances should only be created by a SearchMediator.
        explicit ParallelWorker(std::unique_ptr<theory::Theory> theory, std::unique_ptr<GeneralizedPlanningProblem> gpp,
                              std::unique_ptr<Frontier> open, std::size_t id, SearchMediator& mediator)
                : BFS{std::move(theory), std::move(gpp), std::move(open), id}, _mediator{mediator} {}

        [[nodiscard]] std::shared_ptr<Node> solve(std::vector<std::unique_ptr<Program>> roots = {}) override {
            while (not _stop_source.stop_requested()) {
                if (_verbose) std::osyncstream{std::cout} << "[DEBUG] Worker " << _id << " starts searching.\n";
                _mediator.notify_active(_id);
                std::shared_ptr<Node> solution {BFS::solve()};
                if (solution != nullptr) {
                    if (_verbose) std::osyncstream{std::cout} << "[DEBUG] Worker " << _id << " found a SOLUTION!\n";
                    return solution;
                }

                // Wait until more work arrives, or until an interruption is requested (because of solution found or search finished).
                _mediator.notify_inactive(_id);
                if (_mediator.all_inactive()) {
                    std::cout << "All workers are inactive. Stopping search.\n";
                    _stop_source.request_stop();
                }
                if (_verbose) std::osyncstream{std::cout} << "[DEBUG] Worker " << _id << " is waiting to receive nodes.\n";
                auto frontier {dynamic_cast<ThreadSafeFrontier*>(_open.get())};
                if (frontier) frontier->wait_until_not_empty(_stop_source.get_token());
                else break;
            }
            if (_verbose) std::osyncstream{std::cout} << "[DEBUG] Worker " << _id << " has been interrupted.\n";
            return nullptr;
        };

    protected:
        /// When a new node is ready to be added, the worker delegates the decision of what to do to the mediator.
        /// The mediator can either add the node the worker's _open, or to send it to another worker.
        void add_node_request(std::shared_ptr<Node> node) override {
            _mediator.distribute_node(std::move(node), _id);
        }

        /// -------------------------------- Methods to handle PGP instances --------------------------------------- ///
        void activate_instance_request(id_type instance_idx) override {
            if (_verbose) std::osyncstream{std::cout}
                    << "[ENGINE " << _id << "] Failure on instance " << instance_idx + 1 << ", requesting reevaluation...\n";
            _mediator.activate_instance_request(instance_idx);
        }

        [[nodiscard]] bool activation_requested() const override {
            return _mediator.activation_requested();
        }

        [[nodiscard]] std::set<id_type> get_instances_to_activate() const override {
            return _mediator.get_instances_to_activate();
        }

        /// Blocks execution of all workers until their queue has been reevaluated.
        /// Perhaps it would be possible to block a little less, but we need to ensure that nodes are not extracted
        /// from the queue while it is being evaluated (adding nodes might be fine).
        void activate_and_reevaluate() override {
            _mediator.wait_to_start_reevaluation();
            BFS::activate_and_reevaluate();
            _mediator.wait_to_stop_reevaluation();
        }
        /// -------------------------------------------------------------------------------------------------------- ///

    private:
        SearchMediator& _mediator; // As long as workers are owned by the mediator, this reference will be valid (because the mediator will always outlive the workers).
    };
}

#endif //__SEARCH_PARALLEL_WORKER_H__
