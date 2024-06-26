//
// Created by js on 6/10/22.
//

#ifndef __INSTRUCTIONS_RAM_REGISTER_TEST_H__
#define __INSTRUCTIONS_RAM_REGISTER_TEST_H__

#include "register_action.h"

namespace instructions {
    class RegisterTest : public RegisterAction {
        /// test(func_name(pointer1,...,pointerN)). Returns the fact value after interpreting pointers.
    public:
        RegisterTest(const Function *f, const std::vector<const variables::Pointer*> &pointers) :
            RegisterAction("test", f, pointers){}

        [[nodiscard]] bool is_applicable(const Instance *ins, const ProgramState *ps) const override{
            // Always true by default
            return true;
        }

        [[nodiscard]] bool is_conditional() const override{
            return true;
        }

        [[nodiscard]] value_t apply(const Instance *ins, ProgramState *ps) override{
            ps->set_line(ps->get_line()+1);
            auto state = ps->get_state();
            std::vector<const Object*> objs;
            for(const auto& p : _pointers){
                objs.emplace_back(p->get_object());
            }
            auto fact = std::make_unique<variables::StateVariable>(_f, objs);
            return state->get_value(fact.get());
        }
    };
}
#endif //__INSTRUCTIONS_RAM_REGISTER_TEST_H__
