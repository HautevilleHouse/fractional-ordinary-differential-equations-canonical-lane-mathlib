import FractionalOrdinaryDifferentialEquationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure CaputoDerivativeDefinition where
  order : ℝ
  orderPositive : order > 0
  orderLessThanOne : order < 1
  definitionMatchProp : Prop
  fractionalIntegral : Type u
  caputoOperator : Type v
  definitionMatchPropTerm : definitionMatchProp

def CaputoDerivativeDefined (C : CaputoDerivativeDefinition) : Prop :=
  C.definitionMatchProp

theorem caputo_derivative_defined_from_definition (C : CaputoDerivativeDefinition) : CaputoDerivativeDefined C :=
  C.definitionMatchPropTerm

structure CaputoDerivativePackage (D : CaputoDerivativeDefinition) where
  differentiabilityCondition : Prop
  fractionalPowerRule : Prop
  semiGroupProperty : Prop

def CaputoDerivativeClosed (D : CaputoDerivativeDefinition) (P : CaputoDerivativePackage D) : Prop :=
  P.differentiabilityCondition ∧ P.fractionalPowerRule ∧ P.semiGroupProperty

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse