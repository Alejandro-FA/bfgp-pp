//
// Created by Alejandro Fernández on 11/07/2024.
//

#ifndef __SEARCH_PGP_MANAGER_H
#define __SEARCH_PGP_MANAGER_H

#include <mutex>
#include <condition_variable>
#include <atomic>
#include "../parallel_worker.h"
#include "../../utils/common.h"

namespace search {
    /// This class is responsible for managing the activation of instances in a progressive GeneralizedPlanningProblem
    /// in a multithreaded environment. It allows workers to request the simultaneous activation of an instance in
    /// all threads. All the complexity of managing this activation can be attributed to four requirements:
    ///     1. We need to ensure that active instances are consistent across all threads. Otherwise, the evaluation of
    ///        a node would only be valid in its thread of origin (thus, not allowing to distribute nodes between
    ///        threads).
    ///     2. Activation of instances cannot be done at any moment. We need to ensure that none of the workers are in
    ///        the middle of evaluating, distributing or receiving nodes.
    ///     3. When a thread requests the activation of an instance, multiple threads could request the activation of
    ///        the same instance or different ones before the first activation is handled. We need to ensure that no
    ///        deadlocks occur in this scenario.
    ///     4. Checking if an activation is pending should be a cheap operation, as it will be done frequently. On the
    ///        other hand, activation requests will be sporadic.
    class PgpManager {
    public:
        explicit PgpManager(unsigned int num_threads) : _num_threads{num_threads} {}

        void notify_busy() {
            std::scoped_lock lock{_threads_busy_mutex}; // Also ensures that inactive workers cannot become active while an activation is taking place.
            assert(_threads_busy < _num_threads);
            _threads_busy++;
        }

        void notify_ready() {
            {
                std::scoped_lock lock{_threads_busy_mutex};
                assert(_threads_busy > 0);
                _threads_busy--;
            }
            _threads_busy_cv.notify_one();
        }

        /// Request the activation of an instance in all workers. If another worker is already requesting the activation
        /// of an instance, this worker will simply add the instance to the list of pending activations and return
        /// false. Otherwise, it will activate the instance in all workers and return true.
        bool activate_instance_request(id_type instance_idx, const std::vector<std::unique_ptr<ParallelWorker>>& workers) {
            bool activation_in_progress = _activation_requested.exchange(true);
            {
                std::scoped_lock lock{_pending_activations_mutex};
                _pending_activations.insert(instance_idx);
            }
            if (activation_in_progress) return false; // The first worker to request activation will handle it.

            std::unique_lock lock{_threads_busy_mutex};
            _threads_busy_cv.wait(lock, [this] { return _threads_busy == 1; }); // Wait until all *other* workers are inactive.
            for (id_type idx : _pending_activations) {
                for (const auto& worker : workers)
                    worker->activate_instance(idx);
            }
            _pending_activations.clear();
            _activation_requested.store(false);
            _activation_requested.notify_all();
            return true;
        }

        /// Wait until all pending activations are completed.
        void wait_for_pending_activations() {
            if (_activation_requested) {
                notify_ready();
                _activation_requested.wait(true);
                notify_busy();
            }
        }

    private:
        unsigned int _num_threads;
        std::atomic<bool> _activation_requested {false};

        unsigned int _threads_busy {0};
        mutable std::mutex _threads_busy_mutex;
        mutable std::condition_variable _threads_busy_cv;

        std::set<id_type> _pending_activations;
        mutable std::mutex _pending_activations_mutex;
    };
}

#endif //__SEARCH_PGP_MANAGER_H
