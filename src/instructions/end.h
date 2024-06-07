//
// Created by js on 25/05/22.
//

#ifndef __INSTRUCTIONS_END_H__
#define __INSTRUCTIONS_END_H__

#include "instruction.h"
#include "../instance.h"

namespace instructions{
    class End : public Instruction{
    public:
        End() : Instruction("end") {};

        ~End() override = default;

        [[nodiscard]] bool is_applicable(const Instance* ins, const ProgramState *ps) const override{
            /// Class method to return whether program state ps is in a goal condition of instance ins
            auto state = ps->get_state();
            auto goal = ins->get_goal_condition();
            return std::all_of(goal.cbegin(), goal.cend(),
                               [state](const expressions::conditions::Condition *c){
                                   return c->eval_condition(state);
                               });
        }

        // value_t apply(ProgramState *ps) override;  // is used the default implementation
    };
}

#endif //__INSTRUCTIONS_END_H__
