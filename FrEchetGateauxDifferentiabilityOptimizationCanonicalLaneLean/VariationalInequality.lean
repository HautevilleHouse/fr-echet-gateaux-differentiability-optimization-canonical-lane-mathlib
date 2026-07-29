import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrechetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure VariationalInequalityPackage where
  variationalInequalityDefined : Prop
  solutionExistence : Prop
  uniquenessUnderConvexity : Prop
  stabilityUnderApproximation : Prop

structure VariationalInequalityEvidence (P : VariationalInequalityPackage) where
  variationalInequalityDefinedClosed : P.variationalInequalityDefined
  solutionExistenceClosed : P.solutionExistence
  uniquenessUnderConvexityClosed : P.uniquenessUnderConvexity
  stabilityUnderApproximationClosed : P.stabilityUnderApproximation

def VariationalInequalityClosed (P : VariationalInequalityPackage) : Prop :=
  P.variationalInequalityDefined ∧ P.solutionExistence ∧ P.uniquenessUnderConvexity ∧ P.stabilityUnderApproximation

theorem variational_inequality_closed_from_evidence (P : VariationalInequalityPackage)
    (E : VariationalInequalityEvidence P) : VariationalInequalityClosed P := by
  exact And.intro E.variationalInequalityDefinedClosed
    (And.intro E.solutionExistenceClosed
      (And.intro E.uniquenessUnderConvexityClosed E.stabilityUnderApproximationClosed))

end FrechetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse
