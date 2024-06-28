#ifndef __SEARCH_FRONTIER_H__
#define __SEARCH_FRONTIER_H__

#include <atomic>
#include <memory>
#include <queue>
#include "../node.h"

namespace search {
    class Frontier {
    public:
        virtual ~Frontier() = default;

        [[nodiscard]] virtual bool empty() const {
            return _open.empty();
        }

        [[nodiscard]] virtual std::size_t size() const {
            return _open.size();
        }

        virtual void push(std::shared_ptr<Node> node) {
            _open.push(std::move(node));
        }

        [[nodiscard]] virtual std::shared_ptr<Node> select_node() {
            auto top_node {_open.top()};
            _open.pop(); // remove current node from open
            return top_node;
        }

        [[nodiscard]] virtual std::shared_ptr<Node> top() {
            return _open.empty() ? nullptr : _open.top();
        }

        /// Reevaluate all nodes in the frontier.
        /// \param f Evaluation function used to prioritize the nodes.
        /// \param gpp Generalized Planning Problem to run the programs.
        /// \param next_node_id Next id to assign to the reevaluated nodes. It will be incremented for each node.
        void reevaluate(const std::function<vec_value_t(const Node*)>& f, GeneralizedPlanningProblem* gpp) {
            auto old_open {swap_with_empty()};
            while (not old_open.empty()) {
                auto node {old_open.top()};
                old_open.pop();
                node->get_program()->run(gpp); // run again the program
                node->set_f(f(node.get()));
                node->get_program()->clear_program_states();
                push(std::move(node));
            }
        }

    protected:
        virtual std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node> >, NodeComparator> swap_with_empty() {
            std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node> >, NodeComparator> old_open;
            std::swap(old_open, _open);
            return old_open;
        }

        // In priority_queue, unique_ptr cannot be accessed through top() because is deleted
        std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node> >, NodeComparator> _open;
    };
}

#endif //__SEARCH_FRONTIER_H__
