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

        void distribute_node(std::shared_ptr<Node> node, std::size_t from_id) override {
            assert(from_id < _workers.size());
            std::size_t to_id {get_receiver_id(*node, from_id)};
            _workers[to_id]->add_node(std::move(node), from_id != to_id);
        }

        /// Blocks execution of all workers until their queue has been reevaluated.
        /// Perhaps it would be possible to block a little less, but we need to ensure that nodes are not extracted
        /// from the queue while it is being evaluated (adding nodes might be fine).
        void activate_and_reevaluate(id_type instance_idx) override {
            std::vector<std::future<void>> futures;
            // Activate the GPP instance in all workers and reevaluate their queues
            for (auto& worker: _workers) {
                futures.push_back(std::async(std::launch::async,[&worker, instance_idx](){
                    worker->activate_and_reevaluate(instance_idx);
                }));
            }
            for (auto &future: futures) future.get(); // Wait for the reevaluation to finish
        }

        /// Override this method to change how nodes are distributed between threads.
        [[nodiscard]] virtual std::size_t get_receiver_id(const Node &node, std::size_t from_id) {
            return from_id;
        }

        void notify_inactive(std::size_t thread_id) override {
            assert(thread_id < _workers.size());
            _active_threads[thread_id].exchange(false);
        }

        void notify_active(std::size_t thread_id) override {
            assert(thread_id < _workers.size());
            _active_threads[thread_id].exchange(true);
        }

        [[nodiscard]] bool all_inactive() const override {
            return std::ranges::all_of(_active_threads,[](const std::atomic<bool> &is_active) { return not is_active; });
        }

        /// NOTE: Creating workers is not thread safe. Intended to be used before starting the parallel search.
        void create_worker(std::unique_ptr<theory::Theory> theory, std::unique_ptr<GeneralizedPlanningProblem> gpp) override {
            _workers.push_back(std::make_unique<ParallelWorker>(std::move(theory), std::move(gpp), _num_threads++, *this));
            _workers.back()->set_stop_source(_stop_source);

            // Update _active_threads accordingly. We need to replace the vector because std::atomic is not copyable.
            std::vector<std::atomic<bool>> new_vector(_num_threads);
            std::swap(_active_threads, new_vector);
            for (std::size_t i = 0; i < _num_threads; ++i) _active_threads[i].exchange(true);
        }

        [[nodiscard]] const std::vector<std::unique_ptr<ParallelWorker>>& get_workers() override {
            return _workers;
        }

    protected:
        std::vector<std::unique_ptr<ParallelWorker>> _workers;
        std::size_t _num_threads {0};
        std::vector<std::atomic<bool>> _active_threads;

    private:
        std::stop_source _stop_source;
    };
}

#endif //__SEARCH_BASE_MEDIATOR_H__
