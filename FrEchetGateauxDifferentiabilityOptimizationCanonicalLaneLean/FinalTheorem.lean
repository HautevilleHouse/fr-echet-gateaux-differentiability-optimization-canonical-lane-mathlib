import canonicalLaneMathlib.AdmissibleClass
import FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean.BridgeLemmas
import FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

def ConstrainedFrechetGateauxDifferentiabilityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_frechet_gateaux_differentiability_endgame (A : AdmissibleClass) :
    ConstrainedFrechetGateauxDifferentiabilityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse