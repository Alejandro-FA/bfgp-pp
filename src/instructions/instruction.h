#ifndef __INSTRUCTION_H__
#define __INSTRUCTION_H__

#include "../utils/common.h"
#include "../program_state.h"
#include "../instance.h"

namespace instructions {
    class Instruction {
        /// Instruction is a wrapper class of the different algorithms that can be executed in a given
        /// line of a program, and defines whether it is applicable, its effects and string representation
    public:
        explicit Instruction(std::string name = "empty") : _name(std::move(name)), _instruction_id(0) {};
        virtual ~Instruction() = default;

        [[nodiscard]] virtual std::unique_ptr<Instruction> copy() const {
            return std::make_unique<Instruction>(*this);
        }

        [[nodiscard]] virtual std::string get_name(bool full_info) const{
            return _name;
        }

        virtual void set_id(id_type id){
            _instruction_id = id;
        }

        [[nodiscard]] virtual id_type get_id() const{
            return _instruction_id;
        }

        [[nodiscard]] virtual bool is_applicable(const Instance* ins, const ProgramState *ps) const {
            /// Returns whether the instruction is applicable in the given program state (false by default)
            return false;
        }

        [[nodiscard]] virtual bool is_conditional() const{
            /// Returns whether the instruction is a conditional, i.e., test or cmp (false by default)
            return false;
        }

        virtual value_t apply(const Instance* ins, ProgramState *ps) {
            /// Modifies the program state and returns the result of the last effect (0 by default)
            return value_t{0};
        }

        [[nodiscard]] virtual ActionType get_type() const{
            return ActionType::Math;  // by default, all instructions are mathematical (besides domain planning actions)
        }

        [[nodiscard]] virtual std::string to_string(bool full_info) const {
            return (full_info?"[INSTRUCTION]: ":"") + _name;
        }

    protected:
        const std::string _name;
        id_type _instruction_id;
    };
}

#endif
