import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalIntegralOperator (α : ℝ) where
  order : ℝ := α
  lowerLimit : ℝ := 0
  definition : Type
  wellDefined : Prop

def FractionalIntegralClosed {α : ℝ} (I : FractionalIntegralOperator α) : Prop :=
  I.wellDefined

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse