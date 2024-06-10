//
// Created by js on 1/10/22.
//

#ifndef __POINTER_H__
#define __POINTER_H__

#include "../utils/common.h"
#include "../object_types.h"
#include "variable.h"

namespace variables {
    class Pointer : public Variable {
        /// It is a state variable that refers to an indexed typed object of an instance
    public:
        explicit Pointer(const std::string &name, const ObjectType *obj_type) : Variable(name, 0), _type(obj_type) {}

        [[nodiscard]] std::unique_ptr<Variable> copy_var() const override{
            return std::unique_ptr<Pointer>{new Pointer{*this}};
        }

        [[nodiscard]] std::unique_ptr<Pointer> copy() const {
            return std::unique_ptr<Pointer>{new Pointer{*this}};
        }

        void set_object(const Object *obj){
            _obj = obj;
        }

        [[nodiscard]] const Object *get_object() const {
            return _obj;
        }

        [[nodiscard]] const ObjectType *get_type() const {
            return _type;
        }

        [[nodiscard]] std::string to_string(bool full_info) const override {
            return (full_info ? "[POINTER]: (" : "(") + _name + "=" + std::to_string(_value) + ")";
        }

    protected:
        /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c67-a-polymorphic-class-should-suppress-public-copymove
        Pointer(const Pointer &p) = default;
        Pointer(Pointer &&p) = default;
        Pointer& operator=(const Pointer &p) = default;
        Pointer& operator=(Pointer &&p) = default;

    private:
        const ObjectType *_type;  // type of objects addressed by the pointer
        const Object *_obj = nullptr; // object addressed by the pointer
        //value_t value; // value corresponds to the indexed element in [0,|Objects:_type|)
    };
}
#endif //__POINTER_H__
