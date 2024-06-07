#ifndef __PROGRAM_STATE_H__
#define __PROGRAM_STATE_H__

#include "utils/common.h"
#include "state.h"
#include "variables/pointer.h"
#include "variables/flag.h"

class ProgramState{
    /// It is an extension of a State, with Pointers, Flags and Program Line
public:
	explicit ProgramState(std::unique_ptr<State> s) :  _line(0), _state(std::move(s)){}

    /// TODO: We need to implement a copy constructor that performs a deep copy of the state for thread safety
    explicit ProgramState(ProgramState *ps){
        _line = ps->get_line();
        _pointers = ps->get_pointers();
        _flags = ps->get_flags();
        _state = ps->get_state()->copy();
    }

    /// Owns _state
	~ProgramState() = default;

    /// TODO: We need to implement a copy constructor that performs a deep copy of the state for thread safety
    [[nodiscard]] std::unique_ptr<ProgramState> copy() {
        return std::make_unique<ProgramState>(this);
    }

     //////////////
    /// Setters ///
    //////////////
	void set_line(size_t l){
		_line = l;
	}

    void set_state(std::unique_ptr<State> s){
        _state = std::move(s);
    }

    void add_pointer(variables::Pointer* ptr){
        _pointers.emplace_back(ptr);
    }

    void add_flag(variables::Flag* flag){
        _flags.emplace_back(flag);
    }

     //////////////
    /// Getters ///
    //////////////
     [[nodiscard]] State* get_state() {
         return _state.get();
     }

    // Const overload
	[[nodiscard]] const State* get_state() const{
		return _state.get();
	}
	
	[[nodiscard]] size_t get_line() const{
		return _line;
	}

    [[nodiscard]] const variables::Pointer* get_pointer(const std::string& name) const{
        for(const auto& ptr : _pointers){
            if(ptr->get_name() == name)
                return ptr;
        }
        return nullptr;
    }

    [[nodiscard]] std::vector<variables::Pointer*> get_pointers() {
        return {_pointers.begin(), _pointers.end()};
    }

    // Const overload
    [[nodiscard]] std::vector<const variables::Pointer*> get_pointers() const{
        return {_pointers.cbegin(), _pointers.cend()};
    }

    [[nodiscard]] std::vector<variables::Flag*> get_flags() {
        return {_flags.begin(), _flags.end()};
    }

    // Const overload
    [[nodiscard]] std::vector<const variables::Flag*> get_flags() const{
        return {_flags.cbegin(), _flags.cend()};
    }

    [[nodiscard]] std::string to_string() const{
        std::string ret = "[PROGRAM STATE]:\n"
                          "[LINE]: " + std::to_string( _line ) + "\n";
        ret += "[FLAGS]:";
        for(const auto& f : _flags)
            ret += " "  + f->to_string(false);
        ret += "\n";
        ret += "[POINTERS]:";
        for(const auto& p : _pointers)
            ret += " " + p->to_string(false);
        ret += "\n";
		assert( _state != nullptr );
        ret += _state->to_string(true);

		return ret;
	}

    [[nodiscard]] size_t hash() const{
        return std::hash<std::string>{}(to_string());
    }

private:
    size_t _line;
    std::vector<variables::Pointer*> _pointers;  // owned by Generalized Domain
    std::vector<variables::Flag*> _flags;
    std::unique_ptr<State> _state;
};

// Build a program state comparer
/*class ProgramStateComparer {
public:
    // ToDo: 3-way comparison should improve these results (less calls to functions)
    bool operator()(const std::unique_ptr<ProgramState> &ps1, const std::unique_ptr<ProgramState> &ps2) const {
        // ToDo: simple an inefficient comparisson
        return ps1->to_string() < ps2->to_string();
    }
};*/
#endif
