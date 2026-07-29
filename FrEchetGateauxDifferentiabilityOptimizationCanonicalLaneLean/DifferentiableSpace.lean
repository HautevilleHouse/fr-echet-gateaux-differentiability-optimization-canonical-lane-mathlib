import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure DifferentiableSpace where
  carrier : Type
  normedSpace : NormedAddCommGroup carrier
  dualSpace : Type
  innerProduct : InnerProductSpace ℝ carrier
  frechetDifferentiable : Prop
  gateauxDifferentiable : Prop
  conclusion : frechetDifferentiable ∧ gateauxDifferentiable ∧ (frechetDifferentiable → gateauxDifferentiable)

structure DifferentiableWitnessClosed (O : DifferentiableSpace) : Prop where
  frechetClosed : O.frechetDifferentiable
  gateauxClosed : O.gateauxDifferentiable
  implicationClosed : O.frechetDifferentiable → O.gateauxDifferentiable

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse