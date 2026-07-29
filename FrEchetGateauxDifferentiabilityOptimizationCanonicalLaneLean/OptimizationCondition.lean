import canonicalLaneMathlib.AdmissibleClass
import FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean.FrechetDifferentiability
import FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean.GateauxDifferentiability

namespace HautevilleHouse
namespace FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean

structure OptimizationConditionPackage where
  domain : Type u
  codomain : Type v
  normedDomain : NormedAddCommGroup domain
  normedCodomain : NormedAddCommGroup codomain
  functional : domain → ℝ
  point : domain
  derivativeZero : Prop
  derivativeZeroClosed : derivativeZero

def OptimizationConditionClosed (O : OptimizationConditionPackage) : Prop :=
  O.derivativeZero

end FrEchetGateauxDifferentiabilityOptimizationCanonicalLaneLean
end HautevilleHouse