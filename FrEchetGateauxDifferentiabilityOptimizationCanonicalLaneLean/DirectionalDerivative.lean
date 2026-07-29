import FrEchetGateauxSpace

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure DirectionalDerivativePackage (X : FrEchetGateauxAdmittedObject) where
  f : X.space → ℝ
  direction : X.space
  derivative : ℝ
  existence : Prop
  linearity : Prop
  continuity : Prop

def DirectionalDerivativeClosed (X : FrEchetGateauxAdmittedObject) (D : DirectionalDerivativePackage X) : Prop :=
  D.existence ∧ D.linearity ∧ D.continuity

structure DirectionalDerivativeEvidence (X : FrEchetGateauxAdmittedObject) (D : DirectionalDerivativePackage X) where
  existenceClosed : D.existence
  linearityClosed : D.linearity
  continuityClosed : D.continuity

theorem directional_derivative_closed_from_evidence (X : FrEchetGateauxAdmittedObject) (D : DirectionalDerivativePackage X) (E : DirectionalDerivativeEvidence X D) :
    DirectionalDerivativeClosed X D := by
  exact And.intro E.existenceClosed (And.intro E.linearityClosed E.continuityClosed)

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse