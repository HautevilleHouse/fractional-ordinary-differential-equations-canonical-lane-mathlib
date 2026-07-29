import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FractionalOrdinaryDifferentialEquationsCanonicalLaneLean.FractionalStability

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

def ConstrainedFractionalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fractional_endgame (A : AdmissibleClass) :
    ConstrainedFractionalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse