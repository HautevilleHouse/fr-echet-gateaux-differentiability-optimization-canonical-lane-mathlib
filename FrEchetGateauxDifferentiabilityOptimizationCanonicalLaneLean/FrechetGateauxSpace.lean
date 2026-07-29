import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure FrEchetGateauxAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  linearStructure : AddCommGroup space
  norm : space → ℝ
  normed : NormedAddCommGroup space
  banach : CompleteSpace space
  conclusion : True

def FrEchetGateauxWitnessClosed (O : FrEchetGateauxAdmittedObject) : Prop :=
  True

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse