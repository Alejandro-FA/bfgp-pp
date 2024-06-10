//
// Created by js on 1/10/22.
//

#ifndef __ZERO_FLAG_H__
#define __ZERO_FLAG_H__

#include "flag.h"

namespace variables {
    class ZeroFlag : public Flag {
    public:
        ZeroFlag() : Flag("zf") {}

        ~ZeroFlag() override = default;

        // ToDo: test this method
        [[nodiscard]] std::unique_ptr<Variable> copy_var() const override{
            return std::unique_ptr<ZeroFlag>(new ZeroFlag(*this));
        }

        [[nodiscard]] std::unique_ptr<ZeroFlag> copy() const{
            return std::unique_ptr<ZeroFlag>(new ZeroFlag(*this));
        }

        void set_value(const value_t &res) override {
            _value = (res == 0);
        }

    protected:
        ZeroFlag(const ZeroFlag &zf) : Flag(zf.get_name()) {}
    };
}

#endif //__ZERO_FLAG_H__
