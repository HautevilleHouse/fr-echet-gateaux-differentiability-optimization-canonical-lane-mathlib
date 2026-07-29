import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure GateauxDerivativePackage where
  spaceX : Type u
  spaceY : Type v
  normX : NormedAddCommGroup spaceX
  normY : NormedAddCommGroup spaceY
  openDomain : Set spaceX
  pointA : spaceX
  pointAInDomain : pointA ∈ openDomain
  functionalF : spaceX → spaceY
  directionalDerivative : (spaceX → spaceY) → Prop
  linearMap : spaceX →L[ℝ] spaceY
  limitCondition : Prop
  continuityCondition : Prop

structure GateauxDerivativeEvidence (G : GateauxDerivativePackage) where
  directionalDerivativeClosed : G.directionalDerivative G.linearMap
  limitConditionClosed : G.limitCondition
  continuityConditionClosed : G.continuityCondition

def GateauxDerivativeClosed (G : GateauxDerivativePackage) : Prop :=
  (∀ h : spaceX, G.directionalDerivative (fun x => G.linearMap x)) ∧ G.limitCondition ∧ G.continuityCondition

theorem gateaux_derivative_closed_from_evidence (G : GateauxDerivativePackage) (E : GateauxDerivativeEvidence G) :
    GateauxDerivativeClosed G := by
  exact And.intro E.directionalDerivativeClosed (And.intro E.limitConditionClosed E.continuityConditionClosed)

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse