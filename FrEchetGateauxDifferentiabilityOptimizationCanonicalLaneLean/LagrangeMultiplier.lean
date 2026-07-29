import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure LagrangeMultiplierPackage where
  space : Type u
  constraints : List (space → ℝ)
  multiplierExists : Prop
  saddlePointCondition : Prop
  dualityGapZero : Prop

structure LagrangeMultiplierEvidence (P : LagrangeMultiplierPackage) where
  multiplierExistsClosed : P.multiplierExists
  saddlePointConditionClosed : P.saddlePointCondition
  dualityGapZeroClosed : P.dualityGapZero

def LagrangeMultiplierClosed (P : LagrangeMultiplierPackage) : Prop :=
  P.multiplierExists ∧ P.saddlePointCondition ∧ P.dualityGapZero

theorem lagrange_multiplier_closed_from_evidence
    (P : LagrangeMultiplierPackage)
    (E : LagrangeMultiplierEvidence P) :
    LagrangeMultiplierClosed P := by
  exact And.intro E.multiplierExistsClosed
    (And.intro E.saddlePointConditionClosed E.dualityGapZeroClosed)

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse