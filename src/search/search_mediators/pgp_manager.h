//
// Created by Alejandro Fernández on 11/07/2024.
//

#ifndef __SEARCH_PGP_MANAGER_H
#define __SEARCH_PGP_MANAGER_H

#include <shared_mutex>
#include <condition_variable>
#include <stop_token>
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
        void block_activations() {
            _activation_requested_lock.lock();
        }

        void allow_activations() {
            _activation_requested_lock.unlock();
        }

        /// Request the activation of an instance in all workers. If another worker is already requesting the activation
        /// of an instance, this worker will simply add the instance to the list of pending activations and return
        /// false. Otherwise, it will activate the instance in all workers and return true.
        bool activate_instance_request(id_type instance_idx, const std::vector<std::unique_ptr<ParallelWorker>>& workers) {
            {
                std::scoped_lock lock{_pending_activations_mutex};
                _pending_activations.insert(instance_idx);
            }
            bool activation_in_process = _activation_requested.exchange(true);
            if (activation_in_process) return false; // The first worker to request activation will handle it.

            allow_activations(); // Unlock the shared lock to be able to gain exclusive access to the mutex.
            { // Wait until all workers are either inactive or waiting for activation. Then activate the instances.
                std::scoped_lock lock{_activation_requested_mutex, _pending_activations_mutex}; // The second mutex should not necessary, but just in case.
                for (id_type idx : _pending_activations) {
                    for (const auto& worker : workers)
                        worker->activate_instance(idx);
                }
                _pending_activations.clear();
                _activation_requested.store(false);
                _activation_requested_cv.notify_all();
            }
            block_activations(); // Lock the shared lock again.
            return true;
        }

        /// Wait until all pending activations are completed.
        void wait_for_activation(std::stop_token st = std::stop_token{}) {
            _activation_requested_cv.wait(
                _activation_requested_lock, // If the predicate is false, the lock is released (i.e., allows activations).
                std::move(st), // Stop token to interrupt the wait.
                [this] { return not _activation_requested; }
            ); // When the wait finishes, the lock is acquired again.
        }

    private:
        std::set<id_type> _pending_activations;
        mutable std::mutex _pending_activations_mutex;

        std::atomic<bool> _activation_requested {false};
        mutable std::shared_mutex _activation_requested_mutex;
        mutable std::condition_variable_any _activation_requested_cv;
        mutable std::shared_lock<std::shared_mutex> _activation_requested_lock{_activation_requested_mutex, std::defer_lock};
    };
}

#endif //__SEARCH_PGP_MANAGER_H
