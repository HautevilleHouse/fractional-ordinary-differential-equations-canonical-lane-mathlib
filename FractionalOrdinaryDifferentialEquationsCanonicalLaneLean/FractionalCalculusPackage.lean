import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalCalculusPackage where
  fractionalOrder : ℝ
  caputoDerivative : Type u
  riemannLiouvilleIntegral : Type v
  grunwaldLetnikovApproximation : Type w
  orderPositive : order > 0
  orderFinite : order < ∞

definition FractionalCalculusClosed (F : FractionalCalculusPackage) : Prop :=
  F.orderPositive ∧ F.orderFinite

theorem fractional_calculus_closed_from_package (F : FractionalCalculusPackage) : FractionalCalculusClosed F :=
  And.intro F.orderPositive F.orderFinite

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse