//
// Created by js on 6/10/22.
//

#ifndef __INSTRUCTIONS_RAM_INC_POINTER_H__
#define __INSTRUCTIONS_RAM_INC_POINTER_H__

#include "pointer_action.h"

namespace instructions {
    class PointerInc : public PointerAction {
    public:
        explicit PointerInc(variables::Pointer* ptr) : PointerAction("inc",{ptr}){}
        ~PointerInc() override = default;

        bool is_applicable(const Instance* ins, const ProgramState *ps) const override{
            // There must be just one pointer in the class
            //auto ptr = ps->get_pointer(_pointers[0]->get_name());
            //assert(ptr != nullptr);
            return (_pointers[0]->get_value()+1) <
                        ins->get_typed_variable_domain(_pointers[0]->get_type()->get_name());
        }

        value_t apply(const Instance* ins, ProgramState *ps ) override{
            // There must be just one pointer in the class
            value_t new_value;
            if(is_applicable(ins, ps)) {
                new_value = _pointers[0]->get_value() + 1; // return the corresponding value if applicable
                _pointers[0]->set_value(new_value);
                auto typed_objs =
                        ins->get_typed_objects(_pointers[0]->get_type()->get_name());
                _pointers[0]->set_object(typed_objs[new_value]);
            }
            else new_value = value_t{0}; // return 0 if increase is not applicable
            ps->set_line(ps->get_line() + 1); // always progress one line
            return new_value;
        }
    };
}

#endif //__INSTRUCTIONS_RAM_INC_POINTER_H__
