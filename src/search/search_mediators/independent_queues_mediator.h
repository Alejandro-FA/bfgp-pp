#ifndef __SEARCH_INDEPENDENT_QUEUES_MEDIATOR_H__
#define __SEARCH_INDEPENDENT_QUEUES_MEDIATOR_H__

#include <barrier>
#include <vector>
#include <algorithm>
#include <future>
#include "base_mediator.h"
#include "../parallel_worker.h"

namespace search {
    /// This is not implemented in SearchMediator to avoid circular includes with ParallelWorker
    class IndependentQueuesMediator : public BaseMediator {
    public:
        explicit IndependentQueuesMediator(unsigned int num_threads) : BaseMediator{num_threads} {}

        [[nodiscard]] std::size_t get_receiver_id(const Node &node, std::size_t from_id) override {
            return from_id;
        }

    protected:
        [[nodiscard]] std::unique_ptr<Frontier> _create_frontier() override {
            return std::make_unique<Frontier>();
        }
    };
}

#endif //__SEARCH_INDEPENDENT_QUEUES_MEDIATOR_H__
