#ifndef __SEARCH_BASE_MEDIATOR_H__
#define __SEARCH_BASE_MEDIATOR_H__

#include <vector>
#include <algorithm>
#include <future>
#include <mutex>
#include "search_mediator.h"
#include "../parallel_worker.h"
#include "pgp_manager.h"

namespace search {
    /// This is not implemented in SearchMediator to avoid circular includes with ParallelWorker
    class BaseMediator : public SearchMediator {
    public:
        explicit BaseMediator(unsigned int num_threads) : SearchMediator{num_threads}, _active_threads(num_threads) {
            for (std::size_t i = 0; i < num_threads; ++i) _active_threads[i].store(true);
        }

        void distribute_node(std::shared_ptr<Node> node, std::size_t from_id) override {
            assert(from_id < _workers.size());
            std::size_t to_id {get_receiver_id(*node, from_id)};
            _workers[to_id]->add_node(std::move(node), from_id != to_id);
        }

        /// Used so that 1 worker can request the activation of an instance in all workers.
        bool activate_instance_request(id_type instance_idx) override {
            return _pgp_manager.activate_instance_request(instance_idx, _workers);
        }

        /// Check if there are pending activation requests and synchronize the activation of instances.
        void wait_for_pending_activations() override {
            _pgp_manager.wait_for_pending_activations();
        }

        /// Notifies that a worker is inactive.
        void notify_inactive(std::size_t thread_id) override {
            assert(thread_id < _workers.size());
            _active_threads[thread_id].store(false);
            _pgp_manager.notify_ready(); // Inactive workers always allow the activation of pgp instances.
        }

        /// Notifies that a worker is active.
        void notify_active(std::size_t thread_id) override {
            assert(thread_id < _workers.size());
            _active_threads[thread_id].store(true);
            _pgp_manager.notify_busy(); // Active workers block the activation of pgp instances (and only allow them when ready).
        }

        /// Returns true if all workers are inactive.
        [[nodiscard]] bool all_inactive() const override {
            return std::ranges::all_of(_active_threads,[](const std::atomic<bool> &is_active) { return not is_active; });
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
        PgpManager _pgp_manager{_num_threads};
        std::vector<std::atomic<bool>> _active_threads;
    };
}

#endif //__SEARCH_BASE_MEDIATOR_H__
