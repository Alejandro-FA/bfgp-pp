#ifndef __GENERALIZED_DOMAIN_H__
#define __GENERALIZED_DOMAIN_H__

#include "utils/common.h"
#include "action.h"
#include "domain.h"
#include "instructions/instruction.h"

class GeneralizedDomain{
public:
	/// Instructions can be created only once but we keep the logic
	/// of which actions can be programmed in each line here, so the
	/// engine does not have to reason about it
	explicit GeneralizedDomain(std::unique_ptr<const Domain> domain): _domain(std::move(domain)){};

    /// Ensure that a copyable class has a default constructor
    /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c43-ensure-that-a-copyable-class-has-a-default-constructor
    GeneralizedDomain() = default;

    /// Rule of five: since we need a copy constructor, it is recommended to define all default operations
    /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c21-if-you-define-or-delete-any-copy-move-or-destructor-function-define-or-delete-them-all
    GeneralizedDomain(const GeneralizedDomain &domain)
        : _domain{domain._domain->copy()}, _program_lines{domain._program_lines} {
        for(const auto& ins : domain._instructions)
            _instructions.emplace_back(ins->copy());
        for(const auto& ptr : domain._pointers)
            _pointers.emplace_back(ptr->copy());
        for(const auto& flag : domain._flags)
            _flags.emplace_back(flag->copy());
    }

    GeneralizedDomain& operator=(const GeneralizedDomain &domain) {
        auto tmp{domain};
        std::swap(*this, tmp);
        return *this;
    }

    GeneralizedDomain(GeneralizedDomain &&domain) noexcept = default;

    GeneralizedDomain& operator=(GeneralizedDomain &&domain) noexcept = default;

    ~GeneralizedDomain() = default; // Owns _domain, _instructions, _pointers and _flags
    /// End of Rule of five

    void set_program_lines(size_t program_lines){
        _program_lines = program_lines;
    }

    void add_instruction(std::unique_ptr<instructions::Instruction> instruction){
        instruction->set_id(_instructions.size());
        _instructions.emplace_back(std::move(instruction));
    }

    void add_pointer(std::unique_ptr<variables::Pointer> pointer){
        _pointers.emplace_back(std::move(pointer));
    }

    void add_flag(std::unique_ptr<variables::Flag> flag){
        _flags.emplace_back(std::move(flag));
    }

    [[nodiscard]] const variables::Pointer* get_pointer(size_t idx) const{
        assert(idx < _pointers.size());
        return _pointers[idx].get();
    }

    [[nodiscard]] variables::Pointer* get_pointer(size_t idx) {
        assert(idx < _pointers.size());
        return _pointers[idx].get();
    }

    [[nodiscard]] std::vector<const instructions::Instruction*> get_instructions() const{
        return get_raw_pointers<instructions::Instruction, const instructions::Instruction>(_instructions);
	}

    [[nodiscard]] std::vector<instructions::Instruction*> get_instructions() {
        return get_raw_pointers<instructions::Instruction, instructions::Instruction>(_instructions);
    }

    [[nodiscard]] std::vector<const variables::Pointer*> get_pointers() const{
        return get_raw_pointers<variables::Pointer, const variables::Pointer>(_pointers);
    }

    [[nodiscard]] std::vector<variables::Pointer*> get_pointers() {
        return get_raw_pointers<variables::Pointer, variables::Pointer>(_pointers);
    }

    [[nodiscard]] std::vector<const variables::Flag*> get_flags() const{
        return get_raw_pointers<variables::Flag, const variables::Flag>(_flags);
    }

    [[nodiscard]] std::vector<variables::Flag*> get_flags() {
        return get_raw_pointers<variables::Flag, variables::Flag>(_flags);
    }

	[[nodiscard]] const instructions::Instruction* get_instruction(size_t idx) const{
        if(idx >= _instructions.size()) return nullptr;  // Instruction not found
        return _instructions[idx].get();
	}

    [[nodiscard]] instructions::Instruction* get_instruction(size_t idx) {
        if(idx >= _instructions.size()) return nullptr;  // Instruction not found
        return _instructions[idx].get();
    }

    [[nodiscard]] const instructions::Instruction* get_instruction(const std::string &name) const{
        for(const auto& ins : _instructions){
            if(ins->get_name(true) == name || ins->get_name(false) == name)
                return ins.get();
        }
        return nullptr;  // Instruction not found
    }

    [[nodiscard]] instructions::Instruction* get_instruction(const std::string &name) {
        for(const auto& ins : _instructions){
            if(ins->get_name(true) == name || ins->get_name(false) == name)
                return ins.get();
        }
        return nullptr;  // Instruction not found
    }

    [[nodiscard]] size_t get_program_lines() const{
        return _program_lines;
    }

    /*[[nodiscard]] std::shared_ptr<instructions::Instruction> get_end_for(id_type ptr_id, int modifier, int from_line, int to_line ) const{
        auto it = _end_for_instructions.find(
                std::make_pair(std::make_pair(ptr_id,modifier),
                                  std::make_pair( from_line, to_line ) ) );
        assert( it != _end_for_instructions.end() );
        return it->second;
    }*/

    [[nodiscard]] const Domain* get_domain() const{
        return _domain.get();
    }

    [[nodiscard]] std::string to_string(bool full_info) const{
        std::string ret = "[GENERALIZED-DOMAIN]:\n";
        ret += _domain->to_string(false); // print domain without actions (they are already encapsulated as instructions
        if(not _pointers.empty()) ret += "[POINTERS]:\n";
        for(const auto& ptr : _pointers)
            ret += ptr->to_string(full_info) + "\n";
        if(not _flags.empty()) ret += "[FLAGS]:\n";
        for(const auto& flag : _flags)
            ret += flag->to_string(full_info) + "\n";
        if(not _instructions.empty()) ret += "[INSTRUCTIONS]:\n";
        for(const auto& ins : _instructions)
            if(full_info) ret += ins->to_string(true) + "\n"; // print each instruction
            else ret += ins->get_name(true) + "\n";

        /*if( !_end_for_instructions.empty() ) {
            ret += "[ENDFOR INSTRUCTIONS]:\n";
            for (const auto& m: _end_for_instructions) {
                ret += (m.second)->to_string(true) + "\n";
            }
        }*/
		return ret;
	}


protected:
    std::unique_ptr<const Domain> _domain;
    std::vector<std::unique_ptr<instructions::Instruction>> _instructions;
    std::vector<std::unique_ptr<variables::Pointer>> _pointers;
    std::vector<std::unique_ptr<variables::Flag>> _flags;
    size_t _program_lines{0};

    /// End for instructions => <<ptr_id,dir>,<from=for_line,to=end_for_line+1>> = std::shared_ptr<Instruction> EndFor
    //std::map< std::pair<std::pair<id_type ,int>,std::pair<int,int> >, std::shared_ptr<instructions::Instruction> > _end_for_instructions;
    //std::vector< std::vector< std::shared_ptr<expressions::conditions::Condition> > > _features;

private:
    // FIXME (Issue #47): inefficient method
    // Can be used to get raw pointers from a vector of unique pointers both in const and non-const contexts
    template<typename T, SameOrConst<T> U>
    [[nodiscard]] static std::vector<U*> get_raw_pointers(const std::vector<std::unique_ptr<T>>& pointers) {
        std::vector<U*> raw_pointers;
        for(const auto& ptr : pointers){
            raw_pointers.emplace_back(ptr.get());
        }
        return raw_pointers;
    }
};

#endif
