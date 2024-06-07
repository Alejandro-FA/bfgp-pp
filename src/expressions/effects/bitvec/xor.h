//
// Created by js on 25/05/22.
//

#ifndef __OPERATIONS_BITVEC_XOR_H__
#define __OPERATIONS_BITVEC_XOR_H__

#include "../effect.h"

namespace expressions::effects::bitvec{

    class Xor : public Effect {
    public:
        explicit Xor(std::unique_ptr<variables::Variable> lhs = nullptr,
                     std::unique_ptr<variables::Variable> rhs = nullptr) :
                Effect("^=", std::move(lhs), std::move(rhs)) {}

        explicit Xor(const Xor *eff) :
                Effect(eff->get_operator_name(),
                       eff->get_lhs()->copy_var(),
                       eff->get_rhs()->copy_var()){}

        ~Xor() override = default;

        [[nodiscard]] std::unique_ptr<Expression> copy_expression() const override{
            return std::make_unique<Xor>(this);
        }

        [[nodiscard]] std::unique_ptr<Effect> copy_effect() const override{
            return std::make_unique<Xor>(this);
        }

        value_t get_effect(const State* s) const override {
            /// ^=. returns the exclusive disjunction between two state variables
            auto l_value = get_value(_lhs.get(), s);
            auto r_value = get_value(_rhs.get(), s);
            return (value_t)(((uvalue_t)l_value) ^ ((uvalue_t)r_value)); // assume the type is Unsigned Long Long
        }

        /// Uses the default set_effect
        //void set_effect(State* s, T value) const override {}
    };
}

#endif //__OPERATIONS_BITVEC_XOR_H__
