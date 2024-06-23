#ifndef __SEARCH_BASE_MEDIATOR_H__
#define __SEARCH_BASE_MEDIATOR_H__

#include <vector>
#include <algorithm>
#include <semaphore>
#include "search_mediator.h"
#include "../parallel_worker.h"

namespace search {
    /// This is not implemented in SearchMediator to avoid circular includes with ParallelWorker
    class BaseMediator : public SearchMediator {
    public:
        BaseMediator() = default;

        void distribute_node(std::shared_ptr<Node> node, std::size_t from_id) override {
            assert(from_id < _workers.size());
            std::size_t to_id {get_receiver_id(from_id)};
            send_node(std::move(node), from_id, to_id);
        }

        /// Override this method to change how nodes are distributed between threads.
        [[nodiscard]] virtual std::size_t get_receiver_id(std::size_t from_id) {
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

        [[nodiscard]] bool all_active() const override {
            return std::ranges::all_of(_active_threads,[](const std::atomic<bool> &is_active) { return is_active.load(); });
        }

        [[nodiscard]] bool all_inactive() const override {
            return std::ranges::all_of(_active_threads,[](const std::atomic<bool> &is_active) { return not is_active.load(); });
        }

        /// NOTE: Changing workers is not thread safe. Intended to be used before starting the parallel search.
        void set_workers(std::vector<std::unique_ptr<ParallelWorker>> &&workers) override {
            _workers = std::move(workers);
            _num_threads = _workers.size();
            _stop_source = std::stop_source{};

            // Update _active_threads accordingly
            std::vector<std::atomic<bool>> active_threads(_num_threads);
            std::swap(_active_threads, active_threads);
            for (std::size_t i = 0; i < _num_threads; ++i) {
                _active_threads[i].exchange(!_workers[i]->is_empty());
                _workers[i]->set_stop_source(_stop_source);
            }
        }

        [[nodiscard]] const std::vector<std::unique_ptr<ParallelWorker>>& get_workers() override {
            return _workers;
        }

    private:
        void send_node(std::shared_ptr<Node> node, std::size_t from_id, std::size_t to_id) const {
            if (from_id == to_id) {
                _workers[to_id]->receive_node(std::move(node));
            } else {
                auto destination_gpp = _workers[to_id]->get_generalized_planning_problem();
                _workers[to_id]->receive_node(node->copy_to(destination_gpp));
            }
        }

    protected:
        std::vector<std::unique_ptr<ParallelWorker>> _workers; // TODO: store in stack, not in heap
        std::size_t _num_threads {0};
        std::vector<std::atomic<bool>> _active_threads;

    private:
        std::stop_source _stop_source;
    };
}

#endif //__SEARCH_BASE_MEDIATOR_H__
