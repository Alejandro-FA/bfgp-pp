#ifndef __SEARCH_BASE_MEDIATOR_H__
#define __SEARCH_BASE_MEDIATOR_H__

#include <vector>
#include <algorithm>
#include <future>
#include "search_mediator.h"
#include "../parallel_worker.h"

namespace search {
    /// This is not implemented in SearchMediator to avoid circular includes with ParallelWorker
    class BaseMediator : public SearchMediator {
    public:
        explicit BaseMediator(unsigned int num_threads) : SearchMediator{num_threads} {}

        void distribute_node(std::shared_ptr<Node> node, std::size_t from_id) override {
            assert(from_id < _workers.size());
            std::size_t to_id {get_receiver_id(*node, from_id)};
            _workers[to_id]->add_node(std::move(node), from_id != to_id);
        }

        std::unique_ptr<ParallelWorker> create_worker(std::unique_ptr<theory::Theory> theory, std::unique_ptr<GeneralizedPlanningProblem> gpp, unsigned int id) override {
            auto worker {std::make_unique<ParallelWorker>(std::move(theory), std::move(gpp), _create_frontier(), id, *this)};
            worker->set_stop_source(_stop_source);
            return worker;
        }

    protected:
        /// Override this method to change how nodes are distributed between threads.
        [[nodiscard]] virtual std::size_t get_receiver_id(const Node &node, std::size_t from_id) = 0;


        /// Override this method to use a different frontier implementation.
        [[nodiscard]] virtual std::unique_ptr<Frontier> _create_frontier() = 0;

    private:
        std::stop_source _stop_source;
    };
}

#endif //__SEARCH_BASE_MEDIATOR_H__
