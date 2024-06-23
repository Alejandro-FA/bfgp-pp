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

        virtual void distribute_node(std::shared_ptr<Node> node, std::size_t from_id) = 0;

        virtual void notify_inactive(std::size_t thread_id) = 0;

        virtual void notify_active(std::size_t thread_id) = 0;

        [[nodiscard]] virtual bool all_active() const = 0;

        [[nodiscard]] virtual bool all_inactive() const = 0;

        virtual void set_workers(std::vector<std::unique_ptr<ParallelWorker>> &&workers) = 0;

        [[nodiscard]] virtual const std::vector<std::unique_ptr<ParallelWorker>>& get_workers() = 0;
    };
}

#endif //__SEARCH_SEARCH_MEDIATOR_H__
