#ifndef __SEARCH_SEARCH_MEDIATOR_H__
#define __SEARCH_SEARCH_MEDIATOR_H__

#include <vector>
#include <stop_token>
#include <algorithm>
#include <atomic>
#include "../node.h"
// #include "pgp_manager.h"

namespace search {
    class ParallelWorker;

    /// Interface for a SearchMediator. Implementation is moved to BaseMediator to avoid circular includes with ParallelWorker
    class SearchMediator {
    public:
        /// Don't call this constructor directly, use `create` instead.
        explicit SearchMediator(unsigned int num_threads) : _num_threads{num_threads}, _workers(num_threads) {}

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

        /// Used so that 1 worker can request the activation of an instance in all workers. Returns true if the request
        /// was handled by the caller, false otherwise.
        virtual bool activate_instance_request(id_type instance_idx) = 0;

        /// Check if there are pending activation requests and wait until they are completed.
        virtual void wait_for_activation() = 0;

        /// Notifies that a worker is inactive.
        virtual void notify_inactive(std::size_t thread_id) = 0;

        /// Notifies that a worker is active.
        virtual void notify_active(std::size_t thread_id) = 0;

        /// Returns true if all workers are inactive.
        [[nodiscard]] virtual bool all_inactive() const = 0;

        [[nodiscard]] const std::vector<std::unique_ptr<ParallelWorker>>& get_workers() {
            return _workers;
        }

        virtual std::unique_ptr<ParallelWorker> create_worker(std::unique_ptr<theory::Theory> theory, std::unique_ptr<GeneralizedPlanningProblem> gpp, unsigned int id) = 0;

    protected:
        unsigned int _num_threads;
        std::vector<std::unique_ptr<ParallelWorker>> _workers;
        std::stop_source _stop_source;
    };
}

#endif //__SEARCH_SEARCH_MEDIATOR_H__
