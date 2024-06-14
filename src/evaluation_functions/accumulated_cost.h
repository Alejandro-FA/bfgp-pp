//
// Created by js on 8/03/23.
//

#ifndef __EVALUATION_FUNCTIONS_ACCUMULATED_COST_H__
#define __EVALUATION_FUNCTIONS_ACCUMULATED_COST_H__

#include "evaluation_function.h"

namespace evaluation_functions {

    class AccumulatedCost : public EvaluationFunction {
    public:
        AccumulatedCost() : EvaluationFunction("ac") {}

        [[nodiscard]] std::unique_ptr<EvaluationFunction> copy() const override {
            return std::unique_ptr<AccumulatedCost>{new AccumulatedCost{*this}};
        }

        value_t compute(const Program *p, const GeneralizedPlanningProblem *gpp) const override {
            /// Return the number of steps taken by the current program in the gpp problem
            //auto vps = p->run( gpp );
            auto vps = p->get_program_states();

            // Error when running the program over active instances
            if (vps.empty()) return INF;

            return p->get_num_of_steps();
        }

    protected:
        /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c67-a-polymorphic-class-should-suppress-public-copymove
        AccumulatedCost(const AccumulatedCost &other) = default;
        AccumulatedCost(AccumulatedCost &&other) = default;
        AccumulatedCost& operator=(const AccumulatedCost &other) = default;
        AccumulatedCost& operator=(AccumulatedCost &&other) = default;
    };
}

#endif //__EVALUATION_FUNCTIONS_ACCUMULATED_COST_H__
