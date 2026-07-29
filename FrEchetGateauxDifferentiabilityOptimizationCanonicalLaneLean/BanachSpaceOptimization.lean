import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure BanachSpaceOptimizationPackage where
  spaceX : Type u
  normX : NormedAddCommGroup spaceX
  completeX : CompleteSpace spaceX
  objective : spaceX → ℝ
  feasibleSet : Set spaceX
  closedConvex : Convex ℝ feasibleSet ∧ IsClosed feasibleSet
  coerciveObjective : Prop
  existenceOptimal : ∃ x ∈ feasibleSet, ∀ y ∈ feasibleSet, objective x ≤ objective y
  uniquenessOptimal : Prop

structure BanachSpaceOptimizationEvidence (B : BanachSpaceOptimizationPackage) where
  coerciveObjectiveClosed : B.coerciveObjective
  existenceOptimalClosed : B.existenceOptimal
  uniquenessOptimalClosed : B.uniquenessOptimal

def BanachSpaceOptimizationClosed (B : BanachSpaceOptimizationPackage) : Prop :=
  B.coerciveObjective ∧ B.existenceOptimal ∧ B.uniquenessOptimal

theorem banach_space_optimization_closed_from_evidence (B : BanachSpaceOptimizationPackage) (E : BanachSpaceOptimizationEvidence B) :
    BanachSpaceOptimizationClosed B := by
  exact And.intro E.coerciveObjectiveClosed (And.intro E.existenceOptimalClosed E.uniquenessOptimalClosed)

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse