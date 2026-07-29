import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure FrechetDifferentiabilityPackage where
  domain : Type u
  codomain : Type v
  normedDomain : NormedAddCommGroup domain
  normedCodomain : NormedAddCommGroup codomain
  point : domain
  linearMap : domain →ₗ[ℝ] codomain
  limitCondition : Prop
  limitConditionClosed : limitCondition

def FrechetDifferentiabilityClosed (F : FrechetDifferentiabilityPackage) : Prop :=
  F.limitCondition

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse