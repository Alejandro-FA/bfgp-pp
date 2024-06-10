//
// Created by js on 24/09/22.
//

#ifndef __CONSTANT_VALUE_H__
#define __CONSTANT_VALUE_H__

#include "variable.h"

namespace variables {
    class ConstantValue : public Variable {
    public:
        explicit ConstantValue(const value_t &value) : Variable{std::to_string(value), value} {}

        // ToDo: test this method
        [[nodiscard]] std::unique_ptr<Variable> copy_var() const override {
            return std::unique_ptr<ConstantValue>{new ConstantValue{*this}};
        }

        [[nodiscard]] std::unique_ptr<ConstantValue> copy() const {
            return std::unique_ptr<ConstantValue>{new ConstantValue{*this}};
        }

        // constant getter is the same as variable getter

        void set_value(const value_t &value) override {}  // constants cannot be modified

        [[nodiscard]] std::string to_string(bool full_info) const override {
            return (full_info ? "[CONSTANT]: " : "") + std::to_string(_value);
        }

    protected:
        /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c67-a-polymorphic-class-should-suppress-public-copymove
        ConstantValue(const ConstantValue &c) = default;
        ConstantValue(ConstantValue &&c) = default;
        ConstantValue& operator=(const ConstantValue &c) = default;
        ConstantValue& operator=(ConstantValue &&c) = default;
    };
}
#endif //__CONSTANT_VALUE_H__
