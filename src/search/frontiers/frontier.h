#ifndef __SEARCH_FRONTIER_H__
#define __SEARCH_FRONTIER_H__

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
        virtual void reevaluate(const std::function<vec_value_t(const Node*)>& f, GeneralizedPlanningProblem* gpp, id_type& next_node_id) {
            std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node> >, NodeComparator> old_open;
            std::swap(old_open, _open);
            while (not old_open.empty()) {
                auto node {old_open.top()};
                old_open.pop();
                node->get_program()->run(gpp); // run again the program
                node->set_f(f(node.get()));
                node->set_id(next_node_id++); // Node reevaluated!
                node->get_program()->clear_program_states();
                _open.push(std::move(node));
            }
        }

    protected:
        // In priority_queue, unique_ptr cannot be accessed through top() because is deleted
        std::priority_queue<std::shared_ptr<Node>, std::vector<std::shared_ptr<Node> >, NodeComparator> _open;

        template<std::derived_from<Frontier> T>
        std::unique_ptr<T> copy_and_reset_impl(T& frontier) const {
            auto new_frontier {std::make_unique<T>()};
            using std::swap;
            swap(frontier, *new_frontier);
            return new_frontier;
        }
    };
}

#endif //__SEARCH_FRONTIER_H__
