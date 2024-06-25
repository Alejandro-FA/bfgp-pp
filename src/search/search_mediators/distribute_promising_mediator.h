#ifndef __SEARCH_DISTRIBUTE_PROMISING_MEDIATOR_H__
#define __SEARCH_DISTRIBUTE_PROMISING_MEDIATOR_H__

#include "base_mediator.h"

namespace search {
    class DistributePromisingMediator : public DistributeAllMediator {
    public:
        /// Only distributes nodes if they have a promising heuristic value.
        [[nodiscard]] std::size_t get_receiver_id(const Node &node, std::size_t from_id) override {
            auto next_node {_workers[from_id]->top()};
            if (next_node == nullptr or node.f() < next_node->f()) return from_id;
            else return DistributeAllMediator::get_receiver_id(node, from_id);
        }
    };
}

#endif //__SEARCH_DISTRIBUTE_PROMISING_MEDIATOR_H__
