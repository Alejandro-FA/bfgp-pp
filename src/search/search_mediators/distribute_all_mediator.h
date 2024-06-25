#ifndef __SEARCH_DISTRIBUTE_ALL_MEDIATOR_H__
#define __SEARCH_DISTRIBUTE_ALL_MEDIATOR_H__

#include "base_mediator.h"

namespace search {
    class DistributeAllMediator : public BaseMediator {
    public:
        /// Distribute nodes uniformly between all threads
        [[nodiscard]] std::size_t get_receiver_id(const Node& node, std::size_t from_id) override {
            auto receiver_id {_next_receivers[from_id]};
            _next_receivers[from_id] = (_next_receivers[from_id] + 1) % _num_threads;
            return receiver_id;
        }

        void create_worker(std::unique_ptr<theory::Theory> theory, std::unique_ptr<GeneralizedPlanningProblem> gpp) override {
            BaseMediator::create_worker(std::move(theory), std::move(gpp));
            _next_receivers.resize(_num_threads);
            for (std::size_t i = 0; i < _num_threads; ++i) _next_receivers[i] = (i + 1) % _num_threads;
        }

    protected:
        std::vector<std::size_t> _next_receivers; // Each thread can should only modify its own next_id, so no need to synchronize
    };
}

#endif //__SEARCH_DISTRIBUTE_ALL_MEDIATOR_H__
