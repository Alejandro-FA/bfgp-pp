#ifndef __SEARCH_DISTRIBUTE_PROMISING_MEDIATOR_H__
#define __SEARCH_DISTRIBUTE_PROMISING_MEDIATOR_H__

#include "base_mediator.h"

namespace search {
    class DistributePromisingMediator : public DistributeAllMediator {
    public:
        /// Don't call this constructor directly, use `create` instead.
        explicit DistributePromisingMediator(unsigned int num_threads) : DistributeAllMediator(num_threads) {}

        /// Only distributes nodes if they have a promising heuristic value (i.e., at least as good as the last expanded node).
        [[nodiscard]] std::size_t get_receiver_id(const Node &node, std::size_t from_id) override {
            auto last_f{_workers[from_id]->current_evaluations()};
            return node.f() > last_f ? from_id : DistributeAllMediator::get_receiver_id(node, from_id);
        }

    protected:
        [[nodiscard]] std::unique_ptr<Frontier> _create_frontier() override {
            return std::make_unique<ThreadSafeFrontier>();
        }
    };
}

#endif //__SEARCH_DISTRIBUTE_PROMISING_MEDIATOR_H__
