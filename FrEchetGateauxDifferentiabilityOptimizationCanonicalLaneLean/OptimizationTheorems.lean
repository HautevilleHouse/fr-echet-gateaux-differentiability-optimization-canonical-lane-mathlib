import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure OptimizationTheorem where
  domain : DifferentiableSpace
  functional : (domain.carrier → ℝ) → ℝ
  criticalPoint : Prop
  directionalDerivativeZero : Prop
  frechetCondition : Prop
  gateauxCondition : Prop
  equivalenceTheorem : frechetCondition ∧ gateauxCondition ∧ (frechetCondition ↔ gateauxCondition)

structure OptimizationEvidence (T : OptimizationTheorem) where
  criticalPointClosed : T.criticalPoint
  directionalDerivativeZeroClosed : T.directionalDerivativeZero
  frechetConditionClosed : T.frechetCondition
  gateauxConditionClosed : T.gateauxCondition
  equivalenceClosed : T.equivalenceTheorem

def OptimizationClosed (T : OptimizationTheorem) : Prop :=
  T.criticalPoint ∧ T.directionalDerivativeZero ∧ T.frechetCondition ∧ T.gateauxCondition ∧ (T.frechetCondition ↔ T.gateauxCondition)

theorem optimization_closed_from_evidence (T : OptimizationTheorem) (E : OptimizationEvidence T) :
    OptimizationClosed T := by
  exact And.intro E.criticalPointClosed
    (And.intro E.directionalDerivativeZeroClosed
      (And.intro E.frechetConditionClosed
        (And.intro E.gateauxConditionClosed E.equivalenceClosed)))

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse