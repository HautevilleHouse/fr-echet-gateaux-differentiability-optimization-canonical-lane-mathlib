import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure BoundedLinearMappingPackage where
  domain : Type u
  codomain : Type v
  normedDomain : NormedAddCommGroup domain
  normedCodomain : NormedAddCommGroup codomain
  linearMap : domain →ₗ[ℝ] codomain
  bounded : Prop
  boundedClosed : bounded

def BoundedLinearMappingClosed (B : BoundedLinearMappingPackage) : Prop :=
  B.bounded

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse