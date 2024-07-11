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
                // Start searching
                if (_verbose) std::osyncstream{std::cout} << "[DEBUG] Worker " << _id << " starts searching.\n";
                _mediator.notify_active(_id);
                std::shared_ptr<Node> solution {BFS::solve(std::move(roots))}; // After the first iteration `roots` will be empty
                _mediator.notify_inactive(_id);

                // Check if a solution was found
                if (solution != nullptr) {
                    if (_verbose) std::osyncstream{std::cout} << "[DEBUG] Worker " << _id << " found a SOLUTION!\n";
                    return solution; // The stop is already requested inside BFS::solve, no need to request it again.
                }

                // Check if the search was interrupted
                if (_stop_source.stop_requested()) break;

                // If other threads cannot send us more work, stop searching. If we can receive more work, wait until
                // more nodes arrive, until an interruption is requested (because of solution found or search finished),
                // or until all workers are inactive.
                auto frontier {dynamic_cast<ThreadSafeFrontier*>(_open.get())};
                if (frontier == nullptr) {
                    if (_verbose) std::osyncstream{std::cout} << "[DEBUG] Worker " << _id << " has finished searching.\n";
                    return nullptr;
                }
                else {
                    // Check if all workers are inactive
                    if (_mediator.all_inactive()) {
                        std::cout << "All workers are inactive. Stopping search.\n";
                        _stop_source.request_stop();
                    }
                    else {
                        if (_verbose) std::osyncstream{std::cout} << "[DEBUG] Worker " << _id << " is waiting to receive nodes.\n";
                        frontier->wait_until_not_empty(_stop_source.get_token());
                    }
                }
            }
            if (_verbose) std::osyncstream{std::cout} << "[DEBUG] Worker " << _id << " has been interrupted.\n";
            return nullptr;
        };

        /// Returns the current evaluations of the worker. This method is thread-safe.
        [[nodiscard]] const vec_value_t& current_evaluations() const override {
            std::shared_lock lock{_eval_mutex};
            return BFS::current_evaluations();
        }

    protected:
        /// When a new node is ready to be added, the worker delegates the decision of what to do to the mediator.
        /// The mediator can either add the node the worker's _open, or to send it to another worker.
        void add_node_request(std::shared_ptr<Node> node) override {
            _mediator.distribute_node(std::move(node), _id);
        }

        void activate_instance_request(id_type instance_idx) override {
            if (_verbose) std::osyncstream{std::cout}
                    << "[ENGINE " << _id << "] Failure on instance " << instance_idx + 1 << ", requesting activation...\n";
            bool request_handled = _mediator.activate_instance_request(instance_idx);
            if (_verbose and request_handled) std::osyncstream{std::cout}
                    << "[ENGINE " << _id << "] Activation finished! Requesting reevaluation...\n";
        }

        /// Sets the current evaluations of the worker. This method is thread-safe.
        void set_current_evaluations(const vec_value_t& evaluations) override {
            std::scoped_lock lock{_eval_mutex};
            BFS::set_current_evaluations(evaluations);
        }

        void wait_for_activation() override {
            _mediator.wait_for_activation();
        }

    private:
        SearchMediator& _mediator; // As long as workers are owned by the mediator, this reference will be valid (because the mediator will always outlive the workers).
        mutable std::shared_mutex _eval_mutex;
    };
}

#endif //__SEARCH_PARALLEL_WORKER_H__
