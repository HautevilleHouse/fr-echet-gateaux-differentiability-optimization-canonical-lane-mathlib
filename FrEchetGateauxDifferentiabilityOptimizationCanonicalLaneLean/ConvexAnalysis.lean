import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure ConvexAnalysisPackage where
  convexFunction : (ℝ → ℝ) → Prop
  subgradientExists : Prop
  conjugateFunctionDefined : Prop
  optimalityConditionViaSubgradient : Prop

structure ConvexAnalysisEvidence (P : ConvexAnalysisPackage) where
  convexFunctionClosed : P.convexFunction ≠ ∅
  subgradientExistsClosed : P.subgradientExists
  conjugateFunctionDefinedClosed : P.conjugateFunctionDefined
  optimalityConditionViaSubgradientClosed : P.optimalityConditionViaSubgradient

def ConvexAnalysisClosed (P : ConvexAnalysisPackage) : Prop :=
  P.subgradientExists ∧ P.conjugateFunctionDefined ∧ P.optimalityConditionViaSubgradient

theorem convex_analysis_closed_from_evidence
    (P : ConvexAnalysisPackage)
    (E : ConvexAnalysisEvidence P) :
    ConvexAnalysisClosed P := by
  exact And.intro E.subgradientExistsClosed
    (And.intro E.conjugateFunctionDefinedClosed E.optimalityConditionViaSubgradientClosed)

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse