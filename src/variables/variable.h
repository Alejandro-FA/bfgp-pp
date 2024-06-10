//
// Created by js on 25/09/22.
//

#ifndef __VARIABLE_H__
#define __VARIABLE_H__

#include "../utils/common.h"
#include "../object.h"

namespace variables {
    class Variable {
    public:
        explicit Variable(std::string name, const value_t &value) : _name{std::move(name)}, _value{value} {}

        virtual ~Variable() = default;

        [[nodiscard]] virtual std::unique_ptr<Variable> copy_var() const {
            return std::unique_ptr<Variable>{new Variable{*this}};
        }

        virtual void set_pointer_references(const std::vector<const Variable*> &pointers){
            /// Do nothing by default - generally accessible but only useful for state variables
        }

        virtual void update_object_references(const std::vector<const Object*> &new_obj_refs ){
            /// Do nothing by default - generally accessible but only useful for state variables
        }

        virtual void set_name(const std::string &name){
            _name = name;
        }

        virtual void set_value(const value_t &value) {
            _value = value;
        }

        [[nodiscard]] virtual value_t get_value() const {
            return _value;
        }

        [[nodiscard]] virtual std::string get_name() const {
            return _name;
        }

        [[nodiscard]] virtual std::string to_string(bool full_info) const {
            return (full_info ? "[VARIABLE]: " : "") + _name + (full_info?"="+std::to_string(_value):"");
        }

    protected:
        /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c67-a-polymorphic-class-should-suppress-public-copymove
        Variable(const Variable &var) = default;
        Variable(Variable &&var) = default;
        Variable& operator=(const Variable &var) = default;
        Variable& operator=(Variable &&var) = default;

    protected:
        std::string _name;
        value_t _value;
    };
}
#endif //__VARIABLE_H__
