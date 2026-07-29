import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure SensitivityPackage where
  spaceX : Type u
  spaceY : Type v
  parameterSpace : Type w
  normX : NormedAddCommGroup spaceX
  normY : NormedAddCommGroup spaceY
  normP : NormedAddCommGroup parameterSpace
  functional : parameterSpace → spaceX → spaceY
  nominalParameter : parameterSpace
  functionalFrechet : (spaceX → spaceY) → Prop
  derivativeRespect : Prop
  chainRule : Prop

structure SensitivityEvidence (S : SensitivityPackage) where
  functionalFrechetClosed : S.functionalFrechet
  derivativeRespectClosed : S.derivativeRespect
  chainRuleClosed : S.chainRule

def SensitivityClosed (S : SensitivityPackage) : Prop :=
  S.functionalFrechet ∧ S.derivativeRespect ∧ S.chainRule

theorem sensitivity_closed_from_evidence (S : SensitivityPackage) (E : SensitivityEvidence S) :
    SensitivityClosed S := by
  exact And.intro E.functionalFrechetClosed (And.intro E.derivativeRespectClosed E.chainRuleClosed)

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse