//
// Created by js on 24/05/22.
//

#ifndef __EVALUATION_FUNCTIONS_INVERSE_LOOP_COUNTER_H__
#define __EVALUATION_FUNCTIONS_INVERSE_LOOP_COUNTER_H__

#include "evaluation_function.h"
#include "../instructions/for.h"

namespace evaluation_functions {
    class InverseLoopCounter : public EvaluationFunction {
    public:
        InverseLoopCounter() : EvaluationFunction("ilc") {}

        ~InverseLoopCounter() override = default;

        value_t compute(const Program *p, const GeneralizedPlanningProblem *gpp) override {
            /// Compute number of loops of a program to priorize programs with more loops
            value_t res = 0;
            auto instructions = p->get_instructions();
            for (const auto &ins: instructions) {
                if (dynamic_cast<const instructions::For*>(ins)) res--;
                else if(dynamic_cast<const instructions::Goto*>(ins)) res--; // ToDo: possibly with dest_line < current_line
            }
            return res;
        }
    };
}
#endif //__EVALUATION_FUNCTIONS_INVERSE_LOOP_COUNTER_H__
