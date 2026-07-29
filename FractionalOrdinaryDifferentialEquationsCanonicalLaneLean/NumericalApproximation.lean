import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FractionalOrdinaryDifferentialEquationsCanonicalLaneLean.FractionalOperatorStructure

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure NumericalMethod (α : Type) :=  -- discretization scheme
  scheme : Prop
  consistency : Prop
  stability : Prop
  convergence : Prop

structure NumericalApproximationPackage (α : Type)
    (F : FractionalDerivativePackage α) where
  method : NumericalMethod α
  approximationError : Prop
  errorBound : Prop

structure NumericalApproximationEvidence {α : Type} {F : FractionalDerivativePackage α}
    (N : NumericalApproximationPackage α F) where
  approximationErrorClosed : N.approximationError
  errorBoundClosed : N.errorBound

def NumericalApproximationClosed {α : Type} {F : FractionalDerivativePackage α}
    (N : NumericalApproximationPackage α F) : Prop :=
  N.approximationError ∧ N.errorBound

theorem numerical_approximation_closed_from_evidence {α : Type} {F : FractionalDerivativePackage α}
    (N : NumericalApproximationPackage α F) (E : NumericalApproximationEvidence N) :
    NumericalApproximationClosed N := by
  exact And.intro E.approximationErrorClosed E.errorBoundClosed

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
