import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalNumericalSchemePackage where
  consistencyOrder : ℕ
  stabilityCondition : Prop
  convergenceProved : Prop

def FractionalNumericalSchemeClosed (P : FractionalNumericalSchemePackage) : Prop :=
  P.stabilityCondition ∧ P.convergenceProved

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse