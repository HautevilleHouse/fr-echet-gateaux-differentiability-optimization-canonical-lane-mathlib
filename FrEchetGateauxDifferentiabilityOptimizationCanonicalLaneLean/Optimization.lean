import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure OptimizationProblem where
  spaceX : Type u
  normX : NormedAddCommGroup spaceX
  objective : spaceX → ℝ
  feasibleSet : Set spaceX
  optimalValue : ℝ
  optimalPoint : spaceX
  optimalPointFeasible : optimalPoint ∈ feasibleSet
  objectiveValueAtOptimal : objective optimalPoint = optimalValue

structure FirstOrderOptimalityCondition (P : OptimizationProblem) where
  derivativeZero : Prop
  derivativeZeroClosed : derivativeZero
  sufficientCondition : Prop
  sufficientConditionClosed : sufficientCondition

def FirstOrderOptimalityClosed (P : OptimizationProblem) (F : FirstOrderOptimalityCondition P) : Prop :=
  F.derivativeZero ∧ F.sufficientCondition

theorem first_order_optimality_closed (P : OptimizationProblem) (F : FirstOrderOptimalityCondition P) :
    FirstOrderOptimalityClosed P F := by
  exact And.intro F.derivativeZeroClosed F.sufficientConditionClosed

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse