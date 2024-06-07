//
// Created by js on 25/05/22.
//

#ifndef __CONDITIONS_GREATER_H__
#define __CONDITIONS_GREATER_H__

#include "condition.h"

namespace expressions::conditions {

    class Greater : public Condition {
    public:
        explicit Greater(std::unique_ptr<variables::Variable> lhs = nullptr,
                         std::unique_ptr<variables::Variable> rhs = nullptr) :
                Condition(">", std::move(lhs), std::move(rhs))  {}

        explicit Greater(const Greater *prec) :
                Condition(prec->get_operator_name(),
                          prec->get_lhs()->copy_var(),
                          prec->get_rhs()->copy_var()){}

        ~Greater() override = default;

        [[nodiscard]] std::unique_ptr<Expression> copy_expression() const override{
            return std::make_unique<Greater>(this);
        }

        [[nodiscard]] std::unique_ptr<Condition> copy_condition() const override{
            return std::make_unique<Greater>(this);
        }

        [[nodiscard]] bool eval_condition(const State *s) const override {
            auto l_val = get_value(_lhs.get(), s);
            auto r_val = get_value(_rhs.get(), s);
            return l_val > r_val;
        }
    };
}
#endif //__CONDITIONS_GREATER_H__
