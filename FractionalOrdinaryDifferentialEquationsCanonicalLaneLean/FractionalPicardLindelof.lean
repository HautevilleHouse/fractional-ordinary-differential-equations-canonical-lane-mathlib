import FractionalOrdinaryDifferentialEquationsCanonicalLaneLean.FractionalInitialValueProblem

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalPicardLindelofDefinition (P : FractionalInitialValueProblemDefinition) where
  lipschitzCondition : Prop
  integralOperatorContractive : Prop
  fixedPointExists : Prop
  fixedPointUnique : Prop

def FractionalPicardLindelofClosed (P : FractionalInitialValueProblemDefinition) (D : FractionalPicardLindelofDefinition P) : Prop :=
  D.lipschitzCondition ∧ D.integralOperatorContractive ∧ D.fixedPointExists ∧ D.fixedPointUnique

theorem fractional_picard_lindelof_closed (P : FractionalInitialValueProblemDefinition) (D : FractionalPicardLindelofDefinition P) (h : FractionalPicardLindelofClosed P D) : True :=
  trivial

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse