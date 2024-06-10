//
// Created by js on 1/10/22.
//

#ifndef __FLAG_H__
#define __FLAG_H__

#include "variable.h"

namespace variables {
    class Flag : public Variable{
        /// Flag interprets and action outcome/value into a boolean
    public:
        explicit Flag(const std::string &name) : Variable{name, 0} {} // Initialize flags to False (0) by default

        [[nodiscard]] std::unique_ptr<Variable> copy_var() const override{
            return std::unique_ptr<Flag>{new Flag{*this}};
        }

        [[nodiscard]] std::unique_ptr<Flag> copy() const{
            return std::unique_ptr<Flag>{new Flag{*this}};
        }

        // [[nodiscard]] value_t get_value() const { return _value; }  // use the default
        //virtual void set_value(const value_t &res) {}  // use the default
        // std::string get_name() const{} // use the default

        [[nodiscard]] std::string to_string(bool full_info) const override{
            //return (full_info ? "[FLAG]: (" : "") + _name + (full_info?"="+std::to_string(_value)+")":"");
            return (full_info ? "[FLAG]: (" : "(") + _name + "="+std::to_string(_value)+")";
        }

    protected:
        /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c67-a-polymorphic-class-should-suppress-public-copymove
        Flag(const Flag &f) = default;
        Flag(Flag &&f) = default;
        Flag& operator=(const Flag &f) = default;
        Flag& operator=(Flag &&f) = default;
    };
}
#endif //__FLAG_H__
