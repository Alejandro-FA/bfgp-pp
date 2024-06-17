#ifndef __SEARCH_ENGINE_H__
#define __SEARCH_ENGINE_H__

#include "../utils/common.h"
#include "node.h"
#include "../evaluation_functions/evaluation_function.h"
#include "../generalized_planning_problem.h"

namespace search{
class Engine{
public:
    /// Owns _evaluation_functions
	virtual ~Engine() = default;

	// Solve the problem starting from init Node
	virtual std::shared_ptr<Node> solve(std::vector<std::unique_ptr<Program>> roots = {}) = 0;
	
	// Add a new heuristic to the engine
	virtual void add_evaluation_function(std::unique_ptr<const evaluation_functions::EvaluationFunction> new_ef ){
        if (_verbose) std::cout << "[INFO] Evaluation function " << new_ef->get_name() << " added.\n";
        _evaluation_functions.emplace_back(std::move(new_ef) );
    }

    void set_verbose(bool verbose){
        _verbose = verbose;
    }

	[[nodiscard]] virtual value_t get_expanded() const{
		return _expanded_nodes;
	}
	
	[[nodiscard]] virtual value_t get_evaluated() const{
		return _evaluated_nodes;
	}

    [[nodiscard]] bool get_verbose() const{
        return _verbose;
    }
	
protected:
    bool _verbose{false};
    std::vector<std::unique_ptr<const evaluation_functions::EvaluationFunction>> _evaluation_functions;
	value_t _evaluated_nodes{0};
	value_t _expanded_nodes{0};
};

}
#endif //__SEARCH_ENGINE_H__
