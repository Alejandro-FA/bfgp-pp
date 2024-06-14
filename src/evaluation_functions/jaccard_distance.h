//
// Created by js on 27/05/22.
//

#ifndef __EVALUATION_FUNCTIONS_JACCARD_DISTANCE_H__
#define __EVALUATION_FUNCTIONS_JACCARD_DISTANCE_H__

#include "evaluation_function.h"


namespace evaluation_functions {

    /// Inverse of Simple Matching Coefficient = 1 - ((m_00 + m_11)/(m_00+m_01+m_10+m_11))
    /// it is better than Jaccard Index when there are symmetries
    class JaccardDistance : public EvaluationFunction {
    public:
        JaccardDistance() : EvaluationFunction("jd") {}

        [[nodiscard]] std::unique_ptr<EvaluationFunction> copy() const override {
            return std::unique_ptr<JaccardDistance>{new JaccardDistance{*this}};
        }

        // Computing the hamming distance to goal after each execution.
        // This assumes that goals are equalities.
        value_t compute(const Program *p, const GeneralizedPlanningProblem *gpp) const override {
            //auto vps = p->run( gpp );
            auto vps = p->get_program_states();

            // Error when running the program over active instances
            if (vps.empty()) return INF;

            value_t m_union = 0; // m_union = m_01+m_10+m_11;
            value_t m_intersection = 0; // m_intersection = m_11;
            //value_t n_bits = sizeof(value_t);
            //for (size_t i = 0; i < vps.size(); i++) {
            //    if(gpp->is_progressive() and (not gpp->is_instance_active(i))) continue;
            //    auto ins = gpp->get_instance(i);
            id_type active_instances_local_idx = 0;
            for(const auto& idx : gpp->get_instance_idxs(true)){
                auto ins = gpp->get_instance(idx);
                auto s = vps[active_instances_local_idx++]->get_state();
                for (auto &g: ins->get_goal_condition()) {
                    auto lhs = (uvalue_t)g->get_value(g->get_lhs(), s);
                    auto rhs = (uvalue_t)g->get_value(g->get_rhs(), s);
                    while(lhs or rhs){
                        if(lhs&1 and rhs&1) m_intersection++;
                        if(lhs&1 or rhs&1) m_union++;
                        lhs>>=1; rhs>>=1;
                    }
                }
            }
            return m_union - m_intersection; // this should be divided by m_union, but we prefer to keep it in the integer domain
        }

    protected:
        /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c67-a-polymorphic-class-should-suppress-public-copymove
        JaccardDistance(const JaccardDistance &other) = default;
        JaccardDistance(JaccardDistance &&other) = default;
        JaccardDistance& operator=(const JaccardDistance &other) = default;
        JaccardDistance& operator=(JaccardDistance &&other) = default;
    };
}

#endif //__EVALUATION_FUNCTIONS_JACCARD_DISTANCE_H__
