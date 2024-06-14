//
// Created by js on 7/11/22.
//

#ifndef __EVALUATION_FUNCTIONS_MAX_IFS_H__
#define __EVALUATION_FUNCTIONS_MAX_IFS_H__

#include "evaluation_function.h"
#include "../instructions/if.h"
#include "../instructions/ram/register_test.h"

namespace evaluation_functions {
    class MaxIfs : public EvaluationFunction {
    public:
        MaxIfs() : EvaluationFunction("mi") {}

        [[nodiscard]] std::unique_ptr<EvaluationFunction> copy() const override {
            return std::unique_ptr<MaxIfs>{new MaxIfs{*this}};
        }

        value_t compute(const Program *p, const GeneralizedPlanningProblem *gpp) const override {
            /// Maximize number of lines with IF and TEST instructions
            auto instructions = p->get_instructions();
            value_t if_counter{0};
            for(const auto& ins : p->get_instructions()){
                auto ins_if = dynamic_cast<const instructions::If*>(ins);
                if(ins_if) ++if_counter;
                auto ins_test = dynamic_cast<const instructions::RegisterTest*>(ins);
                if(ins_test) ++if_counter;
            }
            return -if_counter;  // Returning the negated counter to maximize the number of IF instructions
        }

    protected:
        /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c67-a-polymorphic-class-should-suppress-public-copymove
        MaxIfs(const MaxIfs &other) = default;
        MaxIfs(MaxIfs &&other) = default;
        MaxIfs& operator=(const MaxIfs &other) = default;
        MaxIfs& operator=(MaxIfs &&other) = default;
    };
}

#endif //__EVALUATION_FUNCTIONS_MAX_IFS_H__
