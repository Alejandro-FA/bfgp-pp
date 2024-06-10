//
// Created by js on 22/09/22.
//

#ifndef __OBJECT_H__
#define __OBJECT_H__

#include "utils/common.h"
#include "object_types.h"

class Object{
public:
    explicit Object(std::string name = "", id_type id = -1, const ObjectType *t = nullptr) : _name(std::move(name)), _id(id), _t(t){}

    // ToDo: test this function
    [[nodiscard]] std::unique_ptr<Object> copy() const{
        return std::make_unique<Object>(*this);
    }

    [[nodiscard]] std::string get_name() const{
        return _name;
    }

    [[nodiscard]] id_type get_id() const{
        return _id;
    }

    [[nodiscard]] const ObjectType* get_type() const{
        return _t;
    }

    [[nodiscard]] std::string to_string(bool full_info) const{
        if(not full_info) return _name;
        return _name + ":" + (_t!= nullptr?_t->get_name():"");
        //return "[OBJECT]: #" + std::to_string(_id) + " " + _name + ":" + (_t!= nullptr?_t->get_name():"");
    }

private:
    const std::string _name;
    const id_type _id;
    const ObjectType * const _t;
};

#endif //__OBJECT_H__
