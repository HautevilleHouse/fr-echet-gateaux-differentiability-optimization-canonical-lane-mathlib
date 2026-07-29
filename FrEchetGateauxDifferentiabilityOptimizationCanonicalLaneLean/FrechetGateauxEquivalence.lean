import canonicalLaneMathlib.AdmissibleClass
import FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean.FrechetDifferentiability
import FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean.GateauxDifferentiability

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure FrechetGateauxEquivalencePackage where
  domain : Type u
  codomain : Type v
  normedDomain : NormedAddCommGroup domain
  normedCodomain : NormedAddCommGroup codomain
  point : domain
  frechetDiff : FrechetDifferentiabilityPackage
  gateauxDiff : GateauxDifferentiabilityPackage
  equivalence : FrechetDifferentiabilityClosed frechetDiff ↔ GateauxDifferentiabilityClosed gateauxDiff
  equivalenceClosed : equivalence

def FrechetGateauxEquivalenceClosed (E : FrechetGateauxEquivalencePackage) : Prop :=
  E.equivalence

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse