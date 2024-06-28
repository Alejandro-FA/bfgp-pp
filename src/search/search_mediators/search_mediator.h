#ifndef __SEARCH_SEARCH_MEDIATOR_H__
#define __SEARCH_SEARCH_MEDIATOR_H__

#include <vector>
#include <stop_token>
#include <algorithm>
#include <atomic>
#include "../node.h"

namespace search {
    class ParallelWorker;

    /// Interface for a SearchMediator. Implementation is moved to BaseMediator to avoid circular includes with ParallelWorker
    class SearchMediator {
    public:
        /// Don't call this constructor directly, use `create` instead.
        explicit SearchMediator(unsigned int num_threads)
            : _num_threads{num_threads}, _workers(num_threads), _active_threads(num_threads) {
            for (std::size_t i = 0; i < num_threads; ++i) _active_threads[i].exchange(true);
        }

        virtual ~SearchMediator() = default;

        template<std::derived_from<SearchMediator> T>
        static std::unique_ptr<T> create(unsigned int num_threads, const theory::Theory& theory_template,
                                         const std::function<std::unique_ptr<GeneralizedPlanningProblem>()>& gpp_factory) {
            auto mediator {std::make_unique<T>(num_threads)};
            for (std::size_t i = 0; i < num_threads; ++i)
                mediator->_workers[i] = mediator->create_worker(theory_template.copy(), gpp_factory(), i);
            return mediator;
        }

        /// Distributes a node to the appropriate worker.
        virtual void distribute_node(std::shared_ptr<Node> node, std::size_t from_id) = 0;

        /// Used so that 1 worker can request the activation of an instance in all workers.
        virtual void activate_instance_request(id_type instance_idx) = 0;

        /// Notifies that a worker is inactive.
        void notify_inactive(std::size_t thread_id) {
            assert(thread_id < _workers.size());
            _active_threads[thread_id].exchange(false);
        }

        /// Notifies that a worker is active.
        void notify_active(std::size_t thread_id) {
            assert(thread_id < _workers.size());
            _active_threads[thread_id].exchange(true);
        }

        /// Returns true if all workers are inactive.
        [[nodiscard]] bool all_inactive() const {
            return std::ranges::all_of(_active_threads,[](const std::atomic<bool> &is_active) { return not is_active; });
        }

        [[nodiscard]] const std::vector<std::unique_ptr<ParallelWorker>>& get_workers() {
            return _workers;
        }

        virtual std::unique_ptr<ParallelWorker> create_worker(std::unique_ptr<theory::Theory> theory, std::unique_ptr<GeneralizedPlanningProblem> gpp, unsigned int id) = 0;

    protected:
        unsigned int _num_threads {0};
        std::vector<std::unique_ptr<ParallelWorker>> _workers;
        std::stop_source _stop_source;
        std::vector<std::atomic<bool>> _active_threads;
    };
}

#endif //__SEARCH_SEARCH_MEDIATOR_H__
