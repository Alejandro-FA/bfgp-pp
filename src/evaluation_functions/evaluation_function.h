#ifndef __EVALUATION_FUNCTION_H__
#define __EVALUATION_FUNCTION_H__

#include "../utils/common.h"
#include "../instructions/instruction.h"
#include "../program.h"
#include "../program_state.h"
#include "../generalized_planning_problem.h"

namespace evaluation_functions {
    class EvaluationFunction {
        /// Base class for evaluation functions with a default "trivial heuristic" (th)
    public:
        explicit EvaluationFunction(std::string name = "th") : _name(std::move(name)) {}

        virtual ~EvaluationFunction() = default;

        [[nodiscard]] virtual std::unique_ptr<EvaluationFunction> copy() const {
            return std::unique_ptr<EvaluationFunction>{new EvaluationFunction{*this}};
        }

        [[nodiscard]] virtual std::string get_name() const {
            return _name;
        }

        // Program-based or Performance-based heuristic
        virtual value_t compute(const Program *p, const GeneralizedPlanningProblem *gpp) const {
            return 0;
        }

    protected:
        /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c67-a-polymorphic-class-should-suppress-public-copymove
        EvaluationFunction(const EvaluationFunction &other) = default;
        EvaluationFunction(EvaluationFunction &&other) = default;
        EvaluationFunction& operator=(const EvaluationFunction &other) = default;
        EvaluationFunction& operator=(EvaluationFunction &&other) = default;

    private:
        std::string _name;
    };
}

#endif
