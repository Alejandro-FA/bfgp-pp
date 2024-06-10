//
// Created by js on 1/10/22.
//

#ifndef __CARRY_FLAG_H__
#define __CARRY_FLAG_H__

#include "flag.h"

namespace variables {
    class CarryFlag : public Flag {
    public:
        CarryFlag() : Flag{"cf"} {}

        // ToDo: test this method
        [[nodiscard]] std::unique_ptr<Variable> copy_var() const override{
            return std::unique_ptr<CarryFlag>{new CarryFlag{*this}};
        }

        [[nodiscard]] std::unique_ptr<CarryFlag> copy() const{
            return std::unique_ptr<CarryFlag>{new CarryFlag{*this}};
        }

        void set_value(const value_t &res) override {
            _value = (res > 0);
        }

    protected:
        /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c67-a-polymorphic-class-should-suppress-public-copymove
        CarryFlag(const CarryFlag &cf) = default;
        CarryFlag(CarryFlag &&cf) = default;
        CarryFlag& operator=(const CarryFlag &cf) = default;
        CarryFlag& operator=(CarryFlag &&cf) = default;
    };
}

#endif //__CARRY_FLAG_H__
