import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FractionalOrdinaryDifferentialEquationsCanonicalLaneLean.FractionalOperatorStructure

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalPDE (α : Type) (F : FractionalDerivativePackage α) where
  timeParameter : Type u
  solution : timeParameter → α
  fractionalEquation : Prop
  initialCondition : Prop

structure FractionalPDEEvidence {α : Type} {F : FractionalDerivativePackage α} (FPDE : FractionalPDE α F) where
  fractionalEquationClosed : FPDE.fractionalEquation
  initialConditionClosed : FPDE.initialCondition

def FractionalPDEClosed {α : Type} {F : FractionalDerivativePackage α} (FPDE : FractionalPDE α F) : Prop :=
  FPDE.fractionalEquation ∧ FPDE.initialCondition

theorem fractional_pde_closed_from_evidence {α : Type} {F : FractionalDerivativePackage α}
    (FPDE : FractionalPDE α F) (E : FractionalPDEEvidence FPDE) : FractionalPDEClosed FPDE := by
  exact And.intro E.fractionalEquationClosed E.initialConditionClosed

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
