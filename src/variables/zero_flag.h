//
// Created by js on 1/10/22.
//

#ifndef __ZERO_FLAG_H__
#define __ZERO_FLAG_H__

#include "flag.h"

namespace variables {
    class ZeroFlag : public Flag {
    public:
        ZeroFlag() : Flag{"zf"} {}

        // ToDo: test this method
        [[nodiscard]] std::unique_ptr<Variable> copy_var() const override{
            return std::unique_ptr<ZeroFlag>{new ZeroFlag{*this}};
        }

        [[nodiscard]] std::unique_ptr<ZeroFlag> copy() const{
            return std::unique_ptr<ZeroFlag>{new ZeroFlag{*this}};
        }

        void set_value(const value_t &res) override {
            _value = (res == 0);
        }

    protected:
        /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c67-a-polymorphic-class-should-suppress-public-copymove
        ZeroFlag(const ZeroFlag &zf) = default;
        ZeroFlag(ZeroFlag &&zf) = default;
        ZeroFlag& operator=(const ZeroFlag &zf) = default;
        ZeroFlag& operator=(ZeroFlag &&zf) = default;
    };
}

#endif //__ZERO_FLAG_H__
