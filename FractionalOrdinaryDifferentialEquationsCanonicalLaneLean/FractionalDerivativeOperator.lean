import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalDerivativeOperator where
  order : ℝ
  caputo : Bool
  riemannLiouville : Bool
  integralKernelDefined : Prop
  fractionalPower : Prop
  orderPositive : 0 < order
  kernelDefinedTerm : integralKernelDefined
  fractionalPowerTerm : fractionalPower

structure FractionalDerivativeEvidence (D : FractionalDerivativeOperator) where
  orderPositiveClosed : D.orderPositive
  kernelDefinedClosed : D.integralKernelDefined
  fractionalPowerClosed : D.fractionalPower

def FractionalDerivativeClosed (D : FractionalDerivativeOperator) : Prop :=
  D.orderPositive ∧ D.integralKernelDefined ∧ D.fractionalPower

theorem fractional_derivative_closed_from_evidence (D : FractionalDerivativeOperator) (E : FractionalDerivativeEvidence D) : FractionalDerivativeClosed D :=
  And.intro E.orderPositiveClosed (And.intro E.kernelDefinedClosed E.fractionalPowerClosed)

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse