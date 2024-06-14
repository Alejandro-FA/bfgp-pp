//
// Created by js on 21/09/22.
//

#ifndef __OBJECT_TYPES_H__
#define __OBJECT_TYPES_H__

#include "utils/common.h"

class ObjectType{
public:
    explicit ObjectType(std::string name = "", ObjectType* supertype = nullptr)
        : _type_name(std::move(name)), _supertype(supertype) {
        if (supertype) supertype->add_subtype(this);
    }

    void add_subtype(const ObjectType *subtype){
        /// Add a subtype to the class
        _subtypes.emplace_back(subtype);
    }

    [[nodiscard]] std::string get_name() const{
        return _type_name;
    }

    [[nodiscard]] const ObjectType* get_supertype() const{
        return _supertype;
    }

    [[nodiscard]] std::vector<const ObjectType*> get_raw_subtypes() const{
        std::vector<const ObjectType*> subtypes;
        for(const auto& st : _subtypes){
            subtypes.emplace_back(st);
        }
        return subtypes;
    }

    [[nodiscard]] std::string get_definition() const{
        return _type_name + ":" + (_supertype?_supertype->get_name():"");
    }

    // ToDo: test this function
    [[nodiscard]] std::vector<const ObjectType*> get_ancestors() const{
        /// Get all ancestor of a type until reaching the root type
        auto super_type = this->_supertype;
        std::vector<const ObjectType*> type_ancestors;
        while(super_type != nullptr){
            type_ancestors.emplace_back(super_type);
            super_type = super_type->get_supertype();
        }
        return type_ancestors;
    }

    [[nodiscard]] bool is_subtype(const ObjectType* t) const{
        /// Check whether the current Type is a strict subtype of t
        auto super_name = t->get_name();
        auto current = this->_supertype;
        while(current != nullptr ){
            if(current->get_name() == super_name)
                return true;
            current = current->get_supertype();
        }
        return false;
    }

    [[nodiscard]] std::string to_string(bool full_info) const{
        if(not full_info) return _type_name;
        std::string ret = "[TYPE]: " + _type_name + (_supertype!= nullptr?":"+_supertype->get_name():"");
        if(not _subtypes.empty()) {
            ret += " => {";
            for(auto t : _subtypes){
                ret += (t!=*_subtypes.begin()?", ":"") + t->get_name();
            }
            ret += "}";
        }
        return ret;
    }

private:
    const std::string _type_name;
    const ObjectType * const _supertype;
    std::vector<const ObjectType*> _subtypes;

};

#endif //__OBJECT_TYPES_H__
