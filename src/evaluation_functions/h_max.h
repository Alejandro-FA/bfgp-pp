//
// Created by js on 24/10/22.
//

#ifndef __EVALUATION_FUNCTIONS_H_MAX_H__
#define __EVALUATION_FUNCTIONS_H_MAX_H__

#include "evaluation_function.h"
#include "../relaxations/relaxed_planning_graph.h"

namespace evaluation_functions{
    class HMax : public EvaluationFunction{
    public:
        HMax() : EvaluationFunction("hmax") {};

        [[nodiscard]] std::unique_ptr<EvaluationFunction> copy() const override {
            return std::unique_ptr<HMax>{new HMax{*this}};
        }

        // Computing the h_max heuristic per node in the search
        value_t compute(const Program *p, const GeneralizedPlanningProblem *gpp) const override {
            //auto vps = p->run( gpp );
            auto vps = p->get_program_states();
            // Error when running the program over active instances
            if (vps.empty()) return INF;
            value_t res = 0;
            //for (size_t i = 0; i < vps.size(); i++) {
            //    if(gpp->is_progressive() and (not gpp->is_instance_active(i))) continue;
            //    auto ins = gpp->get_instance(i);
            id_type active_instances_local_idx = 0;
            for(const auto& idx : gpp->get_instance_idxs(true)){
                auto ins = gpp->get_instance(idx);
                auto s = vps[active_instances_local_idx++]->get_state();
                auto rpg = std::make_unique<relaxation::RelaxedPlanningGraph>(
                        gpp->get_generalized_domain()->get_domain(), ins);
                rpg->build_relaxed_graph(s);
                res += rpg->get_num_layers();
            }
            return res;
        }

    protected:
        /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c67-a-polymorphic-class-should-suppress-public-copymove
        HMax(const HMax &other) = default;
        HMax(HMax &&other) = default;
        HMax& operator=(const HMax &other) = default;
        HMax& operator=(HMax &&other) = default;
    };
}

#endif //__EVALUATION_FUNCTIONS_H_MAX_H__
