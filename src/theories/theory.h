//
// Created by js on 11/10/22.
//

#ifndef __THEORIES_THEORY_H__
#define __THEORIES_THEORY_H__

#include "../program.h"

namespace theory {
    class Theory {
    public:
        explicit Theory(std::string name = "theory") : _name(std::move(name)) {};
        ~Theory() = default;

        virtual void set_initial_program(GeneralizedPlanningProblem *gpp, Program *p){
            // By default, set END instruction in the last line
            p->set_instruction(p->get_num_instructions()-1,gpp->get_generalized_domain()->get_instruction("end"));
        }

        [[nodiscard]] virtual bool is_action_theory() const{return false;}

        [[nodiscard]] virtual bool check_syntax_constraints(
                const Program *p, size_t program_line, const instructions::Instruction *new_ins) {return true;}

        [[nodiscard]] virtual bool check_semantic_constraints(
                GeneralizedPlanningProblem *gpp, Program *p, size_t program_line, instructions::Instruction *new_ins) {
            return true;
        }

        virtual void update(const Program *p, const instructions::Instruction* last_ins) {} // add search dependent constraints

        [[nodiscard]] virtual std::string get_name() const{
            return _name;
        }
    protected:
        const std::string _name;
    };
}

#endif //__THEORIES_THEORY_H__
