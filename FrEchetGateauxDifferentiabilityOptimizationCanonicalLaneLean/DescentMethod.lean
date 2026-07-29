import OptimizationCondition

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure DescentMethodPackage (X : FrEchetGateauxAdmittedObject) where
  f : X.space → ℝ
  initialPoint : X.space
  stepDirection : X.space
  stepSize : ℝ
  descentCondition : Prop
  convergence : Prop

def DescentMethodClosed (X : FrEchetGateauxAdmittedObject) (D : DescentMethodPackage X) : Prop :=
  D.descentCondition ∧ D.convergence

structure DescentMethodEvidence (X : FrEchetGateauxAdmittedObject) (D : DescentMethodPackage X) where
  descentConditionClosed : D.descentCondition
  convergenceClosed : D.convergence

theorem descent_method_closed_from_evidence (X : FrEchetGateauxAdmittedObject) (D : DescentMethodPackage X) (E : DescentMethodEvidence X D) :
    DescentMethodClosed X D := by
  exact And.intro E.descentConditionClosed E.convergenceClosed

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse