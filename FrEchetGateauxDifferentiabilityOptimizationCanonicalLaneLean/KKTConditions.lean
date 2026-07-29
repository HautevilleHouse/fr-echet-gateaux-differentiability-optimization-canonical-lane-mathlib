import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrechetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure KKTConditionsPackage where
  primalFeasibility : Prop
  dualFeasibility : Prop
  complementarySlackness : Prop
  stationarity : Prop

structure KKTConditionsEvidence (P : KKTConditionsPackage) where
  primalFeasibilityClosed : P.primalFeasibility
  dualFeasibilityClosed : P.dualFeasibility
  complementarySlacknessClosed : P.complementarySlackness
  stationarityClosed : P.stationarity

def KKTConditionsClosed (P : KKTConditionsPackage) : Prop :=
  P.primalFeasibility ∧ P.dualFeasibility ∧ P.complementarySlackness ∧ P.stationarity

theorem kkt_conditions_closed_from_evidence (P : KKTConditionsPackage)
    (E : KKTConditionsEvidence P) : KKTConditionsClosed P := by
  exact And.intro E.primalFeasibilityClosed
    (And.intro E.dualFeasibilityClosed
      (And.intro E.complementarySlacknessClosed E.stationarityClosed))

end FrechetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse
