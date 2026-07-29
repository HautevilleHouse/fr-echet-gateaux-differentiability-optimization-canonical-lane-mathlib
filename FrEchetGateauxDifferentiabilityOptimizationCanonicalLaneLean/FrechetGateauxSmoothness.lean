import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrechetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure FrechetGateauxSmoothnessPackage where
  frechetDifferentiable : Prop
  gateauxDifferentiable : Prop
  linearApproximation : Prop
  directionalDerivativeConsistency : Prop

structure FrechetGateauxSmoothnessEvidence (P : FrechetGateauxSmoothnessPackage) where
  frechetDifferentiableClosed : P.frechetDifferentiable
  gateauxDifferentiableClosed : P.gateauxDifferentiable
  linearApproximationClosed : P.linearApproximation
  directionalDerivativeConsistencyClosed : P.directionalDerivativeConsistency

def FrechetGateauxSmoothnessClosed (P : FrechetGateauxSmoothnessPackage) : Prop :=
  P.frechetDifferentiable ∧ P.gateauxDifferentiable ∧ P.linearApproximation ∧ P.directionalDerivativeConsistency

theorem frechet_gateaux_smoothness_closed_from_evidence (P : FrechetGateauxSmoothnessPackage)
    (E : FrechetGateauxSmoothnessEvidence P) : FrechetGateauxSmoothnessClosed P := by
  exact And.intro E.frechetDifferentiableClosed
    (And.intro E.gateauxDifferentiableClosed
      (And.intro E.linearApproximationClosed E.directionalDerivativeConsistencyClosed))

end FrechetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse
