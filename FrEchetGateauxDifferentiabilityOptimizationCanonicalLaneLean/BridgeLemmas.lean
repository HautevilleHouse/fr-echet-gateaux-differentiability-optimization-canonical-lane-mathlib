import canonicalLaneMathlib.AdmissibleClass
import FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean.FrechetDifferentiability
import FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean.GateauxDifferentiability

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FrechetDifferentiabilityClosed A.object ∧ GateauxDifferentiabilityClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.gateWitness

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse