import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalOperator (α : Type) :=  -- order of differentiation
  order : ℝ
  integralRepresentation : Prop
  caputoDefinition : α → α → Prop
  riemannLiouvilleDefinition : α → α → Prop

structure FractionalDerivativePackage (α : Type) where
  fractionalOperator : FractionalOperator α
  fractionalOperatorLawful : Prop
  compositionRule : Prop

structure FractionalDerivativeEvidence {α : Type} (F : FractionalDerivativePackage α) where
  fractionalOperatorLawfulClosed : F.fractionalOperatorLawful
  compositionRuleClosed : F.compositionRule

def FractionalDerivativeClosed {α : Type} (F : FractionalDerivativePackage α) : Prop :=
  F.fractionalOperatorLawful ∧ F.compositionRule

theorem fractional_derivative_closed_from_evidence {α : Type} (F : FractionalDerivativePackage α)
    (E : FractionalDerivativeEvidence F) : FractionalDerivativeClosed F := by
  exact And.intro E.fractionalOperatorLawfulClosed E.compositionRuleClosed

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
