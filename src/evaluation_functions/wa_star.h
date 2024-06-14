//
// Created by js on 24/05/22.
//

#ifndef __EVALUATION_FUNCTIONS_WA_STAR_H__
#define __EVALUATION_FUNCTIONS_WA_STAR_H__

#include "evaluation_function.h"

namespace evaluation_functions {

    class WAStar : public EvaluationFunction {
    public:
        explicit WAStar(int w=5) : EvaluationFunction("wastar"), _w(w) {}

        [[nodiscard]] std::unique_ptr<EvaluationFunction> copy() const override {
            return std::unique_ptr<WAStar>{new WAStar{*this}};
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
            return _w * res + p->get_num_of_steps(); // e = w*h + c
        }

    protected:
        /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c67-a-polymorphic-class-should-suppress-public-copymove
        WAStar(const WAStar &other) = default;
        WAStar(WAStar &&other) = default;
        WAStar& operator=(const WAStar &other) = default;
        WAStar& operator=(WAStar &&other) = default;

    private:
        int _w;
    };
}
#endif //__EVALUATION_FUNCTIONS_WA_STAR_H__
