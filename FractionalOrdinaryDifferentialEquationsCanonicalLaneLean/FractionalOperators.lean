import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalOperatorPackage where
  alpha : ℝ                    -- fractional order
  operatorType : String         -- e.g., "Riemann-Liouville", "Caputo"
  integralDefinition : Prop
  differentiationDefinition : Prop
  laplaceTransformRelation : Prop

structure FractionalOperatorEvidence (F : FractionalOperatorPackage) where
  integralDefinitionClosed : F.integralDefinition
  differentiationDefinitionClosed : F.differentiationDefinition
  laplaceTransformRelationClosed : F.laplaceTransformRelation

def FractionalOperatorClosed (F : FractionalOperatorPackage) : Prop :=
  F.integralDefinition ∧ F.differentiationDefinition ∧ F.laplaceTransformRelation

theorem fractional_operator_closed_from_evidence (F : FractionalOperatorPackage)
    (E : FractionalOperatorEvidence F) : FractionalOperatorClosed F := by
  exact And.intro E.integralDefinitionClosed
    (And.intro E.differentiationDefinitionClosed E.laplaceTransformRelationClosed)

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse