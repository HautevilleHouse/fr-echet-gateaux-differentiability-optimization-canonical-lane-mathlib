import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure VariationalPrinciple where
  functionalSpace : DifferentiableSpace
  perturbation : (functionalSpace.carrier → ℝ) → (functionalSpace.carrier → ℝ)
  epsilonMinimizer : Prop
  directionalDerivativeBounded : Prop
  frechetDifferentiableImplication : Prop
  conclusion : epsilonMinimizer ∧ directionalDerivativeBounded ∧ frechetDifferentiableImplication

structure VariationalEvidence (V : VariationalPrinciple) where
  epsilonMinimizerClosed : V.epsilonMinimizer
  directionalDerivativeBoundedClosed : V.directionalDerivativeBounded
  frechetDifferentiableImplicationClosed : V.frechetDifferentiableImplication

def VariationalClosed (V : VariationalPrinciple) : Prop :=
  V.epsilonMinimizer ∧ V.directionalDerivativeBounded ∧ V.frechetDifferentiableImplication

theorem variational_closed_from_evidence (V : VariationalPrinciple) (E : VariationalEvidence V) :
    VariationalClosed V := by
  exact And.intro E.epsilonMinimizerClosed
    (And.intro E.directionalDerivativeBoundedClosed E.frechetDifferentiableImplicationClosed)

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse