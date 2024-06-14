#ifndef __SEARCH_ENGINE_H__
#define __SEARCH_ENGINE_H__

#include "../utils/common.h"
#include "node.h"
#include "../evaluation_functions/evaluation_function.h"
#include "../generalized_planning_problem.h"

namespace search{
class Engine{
public:
	explicit Engine( std::unique_ptr<GeneralizedPlanningProblem> gpp ) : _gpp(std::move(gpp)) {};

    /// Owns _evaluation_functions and _gpp
	virtual ~Engine() = default;

	// accumulated cost
	//virtual value_t g( Node* node ) = 0;

	// heuristic functions
	//virtual vec_value_t h(Node* node) = 0;
	
	// Solve the problem starting from init Node
	virtual std::shared_ptr<Node> solve(std::vector<std::unique_ptr<Program>> roots = {}) = 0;
	
	// Add a new heuristic to the engine
	void add_evaluation_function(std::unique_ptr<const evaluation_functions::EvaluationFunction> new_ef ){
        std::cout << "[INFO] Evaluation function " << new_ef->get_name() << " added.\n";
        _evaluation_functions.emplace_back(std::move(new_ef) );
    }

    void set_verbose(bool verbose){
        _verbose = verbose;
    }

    // Set a new theory for the syntactic constraints
    void set_theory(std::unique_ptr<theory::Theory> theory){
        _theory = std::move(theory);
    }
	
	[[nodiscard]] value_t get_expanded() const{
		return _expanded_nodes;
	}
	
	[[nodiscard]] value_t get_evaluated() const{
		return _evaluated_nodes;
	}

    [[nodiscard]] const GeneralizedPlanningProblem* get_generalized_planning_problem() const{
        return _gpp.get();
    }

    [[nodiscard]] const theory::Theory* get_theory() const{
        return _theory.get();
    }

    [[nodiscard]] bool get_verbose() const{
        return _verbose;
    }
	
protected:
	std::unique_ptr<GeneralizedPlanningProblem> _gpp;
    bool _verbose{false};
    std::unique_ptr<theory::Theory> _theory;
    std::vector<std::unique_ptr<const evaluation_functions::EvaluationFunction>> _evaluation_functions;
	value_t _evaluated_nodes{0};
	value_t _expanded_nodes{0};
};

}
#endif //__SEARCH_ENGINE_H__
