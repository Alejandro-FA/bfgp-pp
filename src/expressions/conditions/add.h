//
// Created by js on 25/05/22.
//

#ifndef __CONDITIONS_ADD_H__
#define __CONDITIONS_ADD_H__

#include "condition.h"

namespace expressions::conditions {

    class Add : public Condition{
    public:
        explicit Add(std::unique_ptr<variables::Variable> lhs = nullptr,
                     std::unique_ptr<variables::Variable> rhs = nullptr,
                     value_t max_val = 100) :
                Condition("+", std::move(lhs), std::move(rhs)), _max_val(max_val)  {}

        explicit Add(const Add *prec) :
                Condition(prec->get_operator_name(),
                          prec->get_lhs()->copy_var(),
                          prec->get_rhs()->copy_var()), _max_val(prec->get_max_val()){}

        ~Add() override = default;

        [[nodiscard]] std::unique_ptr<Expression> copy_expression() const override{
            return std::make_unique<Add>(this);
        }

        [[nodiscard]] std::unique_ptr<Condition> copy_condition() const override{
            return std::make_unique<Add>(this);
        }

        [[nodiscard]] value_t get_max_val() const{
            return _max_val;
        }

        bool eval_condition(const State *s) const override {
            auto l_val = get_value(_lhs.get(), s);
            auto r_val = get_value(_rhs.get(), s);
            return l_val + r_val < _max_val;
        }
    private:
        const value_t _max_val;
    };
}
#endif //__CONDITIONS_ADD_H__
