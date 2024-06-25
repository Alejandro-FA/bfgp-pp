#ifndef __SEARCH_SEARCH_MEDIATOR_H__
#define __SEARCH_SEARCH_MEDIATOR_H__

#include <memory>
#include "../node.h"

namespace search {
    class ParallelWorker;

    /// Interface for a SearchMediator. Implementation is moved to BaseMediator to avoid circular includes with ParallelWorker
    class SearchMediator {
    public:
        virtual ~SearchMediator() = default;

        /// Distributes a node to the appropriate worker.
        virtual void distribute_node(std::shared_ptr<Node> node, std::size_t from_id) = 0;

        /// Activates a GPP instance and reevaluates the queue of all workers.
        virtual void activate_and_reevaluate(id_type instance_idx) = 0;

        /// Notifies that a worker is inactive.
        virtual void notify_inactive(std::size_t thread_id) = 0;

        /// Notifies that a worker is active.
        virtual void notify_active(std::size_t thread_id) = 0;

        /// Returns true if all workers are active.
        [[nodiscard]] virtual bool all_active() const = 0;

        /// Returns true if all workers are inactive.
        [[nodiscard]] virtual bool all_inactive() const = 0;

        /// Creates a new worker tied to this mediator.
        virtual void create_worker(std::unique_ptr<theory::Theory> theory, std::unique_ptr<GeneralizedPlanningProblem> gpp) = 0;

        [[nodiscard]] virtual const std::vector<std::unique_ptr<ParallelWorker>>& get_workers() = 0;
    };
}

#endif //__SEARCH_SEARCH_MEDIATOR_H__
