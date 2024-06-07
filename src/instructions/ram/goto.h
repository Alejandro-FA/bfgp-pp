//
// Created by js on 25/05/22.
//

#ifndef __INSTRUCTIONS_GOTO_H__
#define __INSTRUCTIONS_GOTO_H__

#include "../instruction.h"

namespace instructions{
    class Goto : public Instruction{
    public:
        explicit Goto( size_t dest = 0 ) : Instruction("goto"), _dest_line(dest){}
        ~Goto() override = default;

        [[nodiscard]] size_t get_destination_line() const{
            return _dest_line;
        }

        /*void add_cond(std::unique_ptr<expressions::conditions::Condition> cond) {
            /// Add a new condition to the GOTO
            _conds.emplace_back(std::move(cond));
        }*/
        void add_cond(const variables::Flag* flag, value_t expected_val){
            _conds.emplace_back(flag, expected_val);
        }

        bool is_applicable(const Instance* ins, const ProgramState *ps) const override{
            /// A GOTO instruction is always applicable
            return true;
        }

        value_t apply(const Instance* ins, ProgramState* ps ) override{
            //auto s = ps->get_state();
            auto line = ps->get_line();
            //bool eval = std::all_of(_conds.begin(), _conds.end(),
            //                              [s](const auto& c){
            //                                        return c->eval_condition(s); });

            // Flags are references of program state flags, hence we can directly access their value
            bool eval = std::all_of(_conds.begin(), _conds.end(),
                                    [](const auto& c){ return c.first->get_value() == c.second; });

            if( eval ) ps->set_line(line + 1); // If all conditions are True, move to next line
            else ps->set_line(_dest_line); // otherwise, move to destination line
            return value_t{0}; // always return 0
        }

        [[nodiscard]] ActionType get_type() const override{
            /// A GOTO instruction does not modify flags
            return ActionType::Memory;
        }

        [[nodiscard]] std::string get_name(bool full_info) const override{
            std::string ret = "goto(" + std::to_string( _dest_line ) + ",!(";
            for(const auto& cond : _conds)
                ret += "("+ cond.first->get_name() + "=" + std::to_string(cond.second) +")";
            ret += "))";
            return ret;
        }

        [[nodiscard]] std::string to_string(bool full_info ) const override{
            return (full_info?"[INSTRUCTION]: ":"") + get_name(full_info);
        }

    private:
        const size_t _dest_line;
        std::vector<std::pair<const variables::Flag*,value_t>> _conds;  // (flag1=value1)&(flag2=value2)&...
    };
}

#endif //__INSTRUCTIONS_GOTO_H__
