#ifndef __SEARCH_THREAD_SAFE_FRONTIER_H__
#define __SEARCH_THREAD_SAFE_FRONTIER_H__

#include <memory>
#include <queue>
#include <stop_token>
#include <shared_mutex>
#include "frontier.h"

namespace search {
    class ThreadSafeFrontier : public Frontier {
    public:
        [[nodiscard]] bool empty() const override {
            std::shared_lock lock{_mutex};
            return Frontier::empty();
        }

        [[nodiscard]] std::size_t size() const override {
            std::shared_lock lock{_mutex};
            return Frontier::size();
        }

        void push(std::shared_ptr<Node> node) override {
            {
                std::scoped_lock lock{_mutex};
                Frontier::push(std::move(node));
            }
            _cv.notify_all();
        }

        [[nodiscard]] std::shared_ptr<Node> select_node() override {
            std::scoped_lock lock{_mutex};
            return Frontier::select_node();
        }

        [[nodiscard]] std::shared_ptr<Node> top() override {
            std::shared_lock lock{_mutex};
            return Frontier::top();
        }

        /// Wait until the frontier is not empty or until a stop is requested through the stop_token.
        /// \param st Stop token to interrupt the wait.
        void wait_until_not_empty(std::stop_token st = {}) const {
            std::shared_lock lock{_mutex};
            _cv.wait(lock, std::move(st), [this] { return not Frontier::empty(); });
        }

    protected:
        std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node> >, NodeComparator> swap_with_empty() override {
            std::scoped_lock lock{_mutex};
            return Frontier::swap_with_empty();
        }

    private:
        mutable std::shared_mutex _mutex;
        mutable std::condition_variable_any _cv;
    };
}

#endif //__SEARCH_THREAD_SAFE_FRONTIER_H__
