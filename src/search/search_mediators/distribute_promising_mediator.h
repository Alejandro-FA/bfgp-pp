#ifndef __SEARCH_DISTRIBUTE_PROMISING_MEDIATOR_H__
#define __SEARCH_DISTRIBUTE_PROMISING_MEDIATOR_H__

#include "base_mediator.h"

namespace search {
    class DistributePromisingMediator : public DistributeAllMediator {
    public:
        /// Don't call this constructor directly, use `create` instead.
        explicit DistributePromisingMediator(unsigned int num_threads) : DistributeAllMediator(num_threads) {}

        /// Only distributes nodes if they have a promising heuristic value.
        [[nodiscard]] std::size_t get_receiver_id(const Node &node, std::size_t from_id) override {
            auto last_f{_workers[from_id]->current_evaluations()};
            if (node.f() < last_f)
                return from_id; // If the node is not promising, don't distribute it to reduce overhead
            else return DistributeAllMediator::get_receiver_id(node, from_id);
        }

    protected:
        [[nodiscard]] std::unique_ptr<Frontier> _create_frontier() override {
            return std::make_unique<ThreadSafeFrontier>();
        }
    };
}

#endif //__SEARCH_DISTRIBUTE_PROMISING_MEDIATOR_H__
