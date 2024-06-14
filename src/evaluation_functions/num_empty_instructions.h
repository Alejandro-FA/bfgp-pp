//
// Created by js on 27/05/22.
//

#ifndef __EVALUATION_FUNCTIONS_NUM_EMPTY_INSTRUCTIONS_H
#define __EVALUATION_FUNCTIONS_NUM_EMPTY_INSTRUCTIONS_H
#include "evaluation_function.h"

namespace evaluation_functions {
    class NumEmptyInstructions : public EvaluationFunction {
    public:
        NumEmptyInstructions() : EvaluationFunction("nei") {}

        [[nodiscard]] std::unique_ptr<EvaluationFunction> copy() const override {
            return std::unique_ptr<NumEmptyInstructions>{new NumEmptyInstructions{*this}};
        }

        value_t compute(const Program *p, const GeneralizedPlanningProblem *gpp) const override {
            /// Return the number of repeated instructions
            value_t n_empty_ins = 0;
            for(const auto &ins : p->get_instructions()){
                if(ins == nullptr)
                    n_empty_ins++;
            }
            return n_empty_ins;
        }
    protected:
        /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c67-a-polymorphic-class-should-suppress-public-copymove
        NumEmptyInstructions(const NumEmptyInstructions &other) = default;
        NumEmptyInstructions(NumEmptyInstructions &&other) = default;
        NumEmptyInstructions& operator=(const NumEmptyInstructions &other) = default;
        NumEmptyInstructions& operator=(NumEmptyInstructions &&other) = default;
    };
}

#endif //__EVALUATION_FUNCTIONS_NUM_EMPTY_INSTRUCTIONS_H
