//
// Created by js on 25/05/22.
//

#ifndef __OPERATIONS_SUBTRACK_ASSIGN_H__
#define __OPERATIONS_SUBTRACK_ASSIGN_H__

#include "effect.h"

namespace expressions::effects{

    class SubtractAssign : public Effect {
    public:
        explicit SubtractAssign(std::unique_ptr<variables::Variable> lhs = nullptr,
                                std::unique_ptr<variables::Variable> rhs = nullptr) :
                Effect("-=", std::move(lhs), std::move(rhs)) {}

        explicit SubtractAssign(const SubtractAssign* eff):
                Effect(eff->get_operator_name(),
                       eff->get_lhs()->copy_var(),
                       eff->get_rhs()->copy_var()){}

        ~SubtractAssign() override = default;

        [[nodiscard]] std::unique_ptr<Expression> copy_expression() const override{
            return std::make_unique<SubtractAssign>(this);
        }

        [[nodiscard]] std::unique_ptr<Effect> copy_effect() const override{
            return std::make_unique<SubtractAssign>(this);
        }

        value_t get_effect(const State* s) const override {
            /// -=. returns the difference between two state variables
            auto l_value = get_value(_lhs.get(), s);
            auto r_value = get_value(_rhs.get(), s);
            //assert(lhs >= 0 and rhs >= 0);
            return l_value - r_value;  // ToDo: this forces value T to be signed
        }

        /// Uses the default set_effect
        //void set_effect(State *s, const value_t& value) override {}
    };
}

#endif //__OPERATIONS_SUBTRACK_ASSIGN_H__
