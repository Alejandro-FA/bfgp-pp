//
// Created by js on 24/05/22.
//

#ifndef __EVALUATION_FUNCTIONS_MAX_LOOP_LINES_H__
#define __EVALUATION_FUNCTIONS_MAX_LOOP_LINES_H__

#include "evaluation_function.h"
#include "../instructions/for.h"

namespace evaluation_functions {
    class MaxLoopLines : public EvaluationFunction {
    public:
        MaxLoopLines() : EvaluationFunction("mll") {}

        [[nodiscard]] std::unique_ptr<EvaluationFunction> copy() const override {
            return std::unique_ptr<MaxLoopLines>{new MaxLoopLines{*this}};
        }

        value_t compute(const Program *p, const GeneralizedPlanningProblem *gpp) const override {
            /// Maximize number of lines covered by program loops
            auto instructions = p->get_instructions();
            std::vector<bool> covered(instructions.size(), false);
            for (size_t i = 0; i < instructions.size(); i++) {
                // CPP: count the size of the for loop
                auto f = dynamic_cast<const instructions::For*>(instructions[i]);
                if(f)
                    for (size_t j = i; j <= f->get_destination_line(); j++) covered[j] = true;
                // Assembler: count only on backward gotos
                auto g = dynamic_cast<const instructions::Goto*>(instructions[i]);
                if(g and g->get_destination_line()<i)
                    for(size_t j=g->get_destination_line(); j<=i; j++) covered[j]=true;
            }
            return -(value_t) count(covered.begin(), covered.end(), true);
        }

    protected:
        /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c67-a-polymorphic-class-should-suppress-public-copymove
        MaxLoopLines(const MaxLoopLines &other) = default;
        MaxLoopLines(MaxLoopLines &&other) = default;
        MaxLoopLines& operator=(const MaxLoopLines &other) = default;
        MaxLoopLines& operator=(MaxLoopLines &&other) = default;
    };
}

#endif //__EVALUATION_FUNCTIONS_MAX_LOOP_LINES_H__
