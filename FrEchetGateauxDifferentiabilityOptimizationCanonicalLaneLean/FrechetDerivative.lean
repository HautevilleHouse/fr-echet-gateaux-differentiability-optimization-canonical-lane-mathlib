import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure FrechetDerivativePackage where
  spaceX : Type u
  spaceY : Type v
  normX : NormedAddCommGroup spaceX
  normY : NormedAddCommGroup spaceY
  openDomain : Set spaceX
  pointA : spaceX
  pointAInDomain : pointA ∈ openDomain
  functionalF : spaceX → spaceY
  derivativeExists : Prop
  linearMap : spaceX →L[ℝ] spaceY
  limitCondition : Prop
  remainderCondition : Prop

structure FrechetDerivativeEvidence (F : FrechetDerivativePackage) where
  derivativeExistsClosed : F.derivativeExists
  limitConditionClosed : F.limitCondition
  remainderConditionClosed : F.remainderCondition

def FrechetDerivativeClosed (F : FrechetDerivativePackage) : Prop :=
  F.derivativeExists ∧ F.limitCondition ∧ F.remainderCondition

theorem frechet_derivative_closed_from_evidence (F : FrechetDerivativePackage) (E : FrechetDerivativeEvidence F) :
    FrechetDerivativeClosed F := by
  exact And.intro E.derivativeExistsClosed (And.intro E.limitConditionClosed E.remainderConditionClosed)

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse