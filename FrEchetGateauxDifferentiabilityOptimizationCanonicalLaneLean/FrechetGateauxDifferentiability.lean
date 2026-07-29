import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure FrechetGateauxDifferentiabilityPackage where
  space : Type u
  norm : space → ℝ
  linearOperator : space → space → ℝ
  frechetDerivativeExists : Prop
  gateauxDerivativeExists : Prop
  linearityOfDerivative : Prop
  continuityOfDerivative : Prop

structure FrechetGateauxDifferentiabilityEvidence (P : FrechetGateauxDifferentiabilityPackage) where
  frechetDerivativeExistsClosed : P.frechetDerivativeExists
  gateauxDerivativeExistsClosed : P.gateauxDerivativeExists
  linearityOfDerivativeClosed : P.linearityOfDerivative
  continuityOfDerivativeClosed : P.continuityOfDerivative

def FrechetGateauxDifferentiabilityClosed (P : FrechetGateauxDifferentiabilityPackage) : Prop :=
  P.frechetDerivativeExists ∧ P.gateauxDerivativeExists ∧ P.linearityOfDerivative ∧ P.continuityOfDerivative

theorem frechet_gateaux_differentiability_closed_from_evidence
    (P : FrechetGateauxDifferentiabilityPackage)
    (E : FrechetGateauxDifferentiabilityEvidence P) :
    FrechetGateauxDifferentiabilityClosed P := by
  exact And.intro E.frechetDerivativeExistsClosed
    (And.intro E.gateauxDerivativeExistsClosed
      (And.intro E.linearityOfDerivativeClosed E.continuityOfDerivativeClosed))

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse