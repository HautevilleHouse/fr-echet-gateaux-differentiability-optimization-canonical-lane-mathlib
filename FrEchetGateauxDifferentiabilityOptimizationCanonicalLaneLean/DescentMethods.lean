import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure DescentMethodsPackage where
  stepSize : ℕ → ℝ
  descentDirection : (ℝ → ℝ) → (ℝ → ℝ)
  convergenceGuaranteed : Prop
  optimalStepSizeExists : Prop

structure DescentMethodsEvidence (P : DescentMethodsPackage) where
  stepSizeClosed : P.stepSize 0 > 0
  descentDirectionClosed : P.descentDirection ≠ ∅
  convergenceGuaranteedClosed : P.convergenceGuaranteed
  optimalStepSizeExistsClosed : P.optimalStepSizeExists

def DescentMethodsClosed (P : DescentMethodsPackage) : Prop :=
  P.convergenceGuaranteed ∧ P.optimalStepSizeExists

theorem descent_methods_closed_from_evidence
    (P : DescentMethodsPackage)
    (E : DescentMethodsEvidence P) :
    DescentMethodsClosed P := by
  exact And.intro E.convergenceGuaranteedClosed E.optimalStepSizeExistsClosed

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse