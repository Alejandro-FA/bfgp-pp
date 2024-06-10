//
// Created by js on 22/09/22.
//

#ifndef __FUNCTION_H__
#define __FUNCTION_H__

#include "utils/common.h"
#include "object.h"

class Function{
    /// Class devoted to declare a lifted function, e.g., func(param_type_1, ..., param_type_n)
public:
    explicit Function(std::string name = "", id_type id = (id_type)-1) : _name(std::move(name)), _id(id){}

    /// Rule of five: since we need a copy constructor, it is recommended to define all default operations
    /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c21-if-you-define-or-delete-any-copy-move-or-destructor-function-define-or-delete-them-all
    Function(const Function &f) : _name(f.get_name()), _id(f.get_id()){
        for(const auto& p : f.get_parameters())
            _parameters.emplace_back(p->copy());
    }

    Function& operator=(const Function &f) = delete; // Currently not needed, and allows to make attributes const

    Function(Function &&f) noexcept = default;

    Function& operator=(Function &&f) noexcept = delete; // Currently not needed, and allows to make attributes const

    ~Function() = default;
    /// End of Rule of five

    // ToDo: test this function
    [[nodiscard]] std::unique_ptr<Function> copy() const {
        return std::make_unique<Function>(*this);
    }

    void add_parameter(std::unique_ptr<const Object> t){
        /// Add a parameter to the function symbol
        _parameters.emplace_back(std::move(t));
    }

    [[nodiscard]] std::string get_name() const{
        return _name;
    }

    [[nodiscard]] std::string get_signature() const{
        std::string ret = _name +"(";
        for(const auto& p : _parameters){
            ret += (p != *_parameters.begin()?",":"") + p->to_string(true);
        }
        ret += ")";
        return ret;
    }

    // FIXME (Issue #47): inefficient method
    [[nodiscard]] std::vector<const Object*> get_parameters() const{
        std::vector<const Object*> parameters;
        for(const auto& p : _parameters)
            parameters.emplace_back(p.get());
        return parameters;
    }

    // FIXME: inefficient method O(|pars|), although only a few parameters expected
    [[nodiscard]] const Object* get_parameter(const std::string& name) const{
        for(const auto& p : _parameters)
            if(p->get_name() == name)
                return p.get();
        return nullptr;
    }

    [[nodiscard]] id_type get_id() const{
        return _id;
    }

    [[nodiscard]] std::string to_string(bool full_info) const{
        return (full_info?"[FUNCTION]: #"+std::to_string(_id)+" ":"") + get_signature();
    }

private:
    const std::string _name;
    std::vector<std::unique_ptr<const Object>> _parameters;
    const id_type _id;
};

#endif //__FUNCTION_H__
