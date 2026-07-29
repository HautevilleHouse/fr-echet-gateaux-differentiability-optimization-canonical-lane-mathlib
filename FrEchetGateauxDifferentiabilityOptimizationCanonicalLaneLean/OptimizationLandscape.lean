import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure OptimizationLandscapePackage where
  objective : Type u → ℝ
  feasibleSet : Set (Type u)
  localMinimum : Prop
  globalMinimum : Prop
  stationaryPointsCharacterized : Prop

structure OptimizationLandscapeEvidence (P : OptimizationLandscapePackage) where
  objectiveClosed : P.objective ≠ ∅
  feasibleSetClosed : P.feasibleSet.Nonempty
  localMinimumClosed : P.localMinimum
  globalMinimumClosed : P.globalMinimum
  stationaryPointsCharacterizedClosed : P.stationaryPointsCharacterized

def OptimizationLandscapeClosed (P : OptimizationLandscapePackage) : Prop :=
  P.localMinimum ∧ P.globalMinimum ∧ P.stationaryPointsCharacterized

theorem optimization_landscape_closed_from_evidence
    (P : OptimizationLandscapePackage)
    (E : OptimizationLandscapeEvidence P) :
    OptimizationLandscapeClosed P := by
  exact And.intro E.localMinimumClosed
    (And.intro E.globalMinimumClosed E.stationaryPointsCharacterizedClosed)

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse