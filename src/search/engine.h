#ifndef __SEARCH_ENGINE_H__
#define __SEARCH_ENGINE_H__

#include "../utils/common.h"
#include "frontiers/frontier.h"
#include "node.h"
#include "../evaluation_functions/evaluation_function.h"
#include "../theories/theory.h"

namespace search{
    class Engine{
    public:
        explicit Engine (std::unique_ptr<theory::Theory> theory, std::unique_ptr<GeneralizedPlanningProblem> gpp)
            : _theory {std::move(theory)}, _gpp{std::move(gpp)} {}

        /// Owns _evaluation_functions
        virtual ~Engine() = default;

        // Solve the problem starting from init Node
        virtual std::shared_ptr<Node> solve(std::vector<std::unique_ptr<Program>> roots = {}) = 0;

        // Add a new heuristic to the engine
        virtual void add_evaluation_function(std::unique_ptr<const evaluation_functions::EvaluationFunction> new_ef ){
            _evaluation_functions.emplace_back(std::move(new_ef));
        }

        /*void set_bitvec_theory(bool is_bitvec){
            _bitvec_theory = is_bitvec;
        }*/

        virtual void set_verbose(bool verbose){
            _verbose = verbose;
        }

        [[nodiscard]] virtual value_t get_expanded() const{
            return _expanded_nodes;
        }

        [[nodiscard]] virtual value_t get_evaluated() const{
            return _evaluated_nodes;
        }

        /// Caution! This method is not thread-safe.
        [[nodiscard]] GeneralizedPlanningProblem *get_generalized_planning_problem() {
            return _gpp.get();
        }

    protected:
        const std::unique_ptr<theory::Theory> _theory;
        const std::unique_ptr<GeneralizedPlanningProblem> _gpp;
        bool _verbose {false};
        std::vector<std::unique_ptr<const evaluation_functions::EvaluationFunction>> _evaluation_functions;
        value_t _evaluated_nodes{0};
        value_t _expanded_nodes{0};
    };
}
#endif //__SEARCH_ENGINE_H__
