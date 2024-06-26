//
// Created by js on 7/09/22.
//

#ifndef __EVALUATION_FUNCTIONS_LANDMARK_COUNT_H__
#define __EVALUATION_FUNCTIONS_LANDMARK_COUNT_H__

#include "evaluation_function.h"
#include "../landmarks/landmark_graph.h"

namespace evaluation_functions{
    class LandmarkCount : public EvaluationFunction{
    public:
        LandmarkCount() : EvaluationFunction("lmc") {};

        [[nodiscard]] std::unique_ptr<EvaluationFunction> copy() const override {
            return std::unique_ptr<LandmarkCount>{new LandmarkCount{*this}};
        }

        // Computing the landmark counting semi-heuristic during program execution.
        value_t compute(const Program *p, const GeneralizedPlanningProblem *gpp) const override {
            //return p->get_landmark_count();  // ToDo: landmarks to be implemented
            return value_t{0};
        }

    protected:
        /// https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#c67-a-polymorphic-class-should-suppress-public-copymove
        LandmarkCount(const LandmarkCount &other) = default;
        LandmarkCount(LandmarkCount &&other) = default;
        LandmarkCount& operator=(const LandmarkCount &other) = default;
        LandmarkCount& operator=(LandmarkCount &&other) = default;
    };
}

#endif //__EVALUATION_FUNCTIONS_LANDMARK_COUNT_H__
