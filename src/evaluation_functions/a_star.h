//
// Created by js on 24/05/22.
//

#ifndef __EVALUATION_FUNCTIONS_A_STAR_H__
#define __EVALUATION_FUNCTIONS_A_STAR_H__

#include "evaluation_function.h"

namespace evaluation_functions {

    class AStar : public EvaluationFunction {
    public:
        AStar() : EvaluationFunction("astar") {}

        [[nodiscard]] std::unique_ptr<EvaluationFunction> copy() const override {
            return std::unique_ptr<AStar>{new AStar{*this}};
        }

        value_t compute(const Program *p, const GeneralizedPlanningProblem *gpp) const override {
            /// Computing squared distance to goal after each execution.
            /// This assumes that goals are equalities.
            //auto vps = p->run( gpp );
            auto vps = p->get_program_states();

            // Error when running the program over active instances
            if (vps.empty()) return INF;

            value_t res = 0;
            id_type active_instances_local_idx = 0;
            for(const auto& idx : gpp->get_instance_idxs(true)){
                auto ins = gpp->get_instance(idx);
                auto s = vps[active_instances_local_idx++]->get_state();
                for (const auto &g: ins->get_goal_condition()) {
                    auto lhs = g->get_value(g->get_lhs(), s);
                    auto rhs = g->get_value(g->get_rhs(), s);
                    res += ((lhs - rhs) * (lhs - rhs));  // note: care with overflow operation
                }
            }
            return res + p->get_num_of_steps(); // e = h + c
        }

    protected:
        /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c67-a-polymorphic-class-should-suppress-public-copymove
        AStar(const AStar &other) = default;
        AStar(AStar &&other) = default;
        AStar& operator=(const AStar &other) = default;
        AStar& operator=(AStar &&other) = default;
    };
}
#endif //__EVALUATION_FUNCTIONS_A_STAR_H__
