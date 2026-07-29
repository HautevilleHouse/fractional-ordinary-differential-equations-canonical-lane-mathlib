import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalCaputoOperator (α : ℝ) where
  order : ℝ := α
  lowerLimit : ℝ := 0
  definition : Type
  wellDefined : Prop

def FractionalCaputoClosed {α : ℝ} (D : FractionalCaputoOperator α) : Prop :=
  D.wellDefined

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse