import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure GateauxDifferentiabilityPackage where
  domain : Type u
  codomain : Type v
  normedDomain : NormedAddCommGroup domain
  normedCodomain : NormedAddCommGroup codomain
  point : domain
  directionalDerivative : domain → domain → codomain
  linearInDirection : Prop
  linearInDirectionClosed : linearInDirection

def GateauxDifferentiabilityClosed (G : GateauxDifferentiabilityPackage) : Prop :=
  G.linearInDirection

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse