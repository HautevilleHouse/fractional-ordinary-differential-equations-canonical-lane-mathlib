import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FractionalOrdinaryDifferentialEquationsCanonicalLaneLean.FractionalPDE

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure StabilityPackage {α : Type} {F : FractionalDerivativePackage α}
    (FPDE : FractionalPDE α F) where
  lyapunovFunction : Prop
  asymptoticStability : Prop
  robustness : Prop

structure StabilityEvidence {α : Type} {F : FractionalDerivativePackage α}
    {FPDE : FractionalPDE α F} (S : StabilityPackage FPDE) where
  lyapunovFunctionClosed : S.lyapunovFunction
  asymptoticStabilityClosed : S.asymptoticStability
  robustnessClosed : S.robustness

def StabilityClosed {α : Type} {F : FractionalDerivativePackage α}
    {FPDE : FractionalPDE α F} (S : StabilityPackage FPDE) : Prop :=
  S.lyapunovFunction ∧ S.asymptoticStability ∧ S.robustness

theorem stability_closed_from_evidence {α : Type} {F : FractionalDerivativePackage α}
    {FPDE : FractionalPDE α F} (S : StabilityPackage FPDE) (E : StabilityEvidence S) :
    StabilityClosed S := by
  exact And.intro E.lyapunovFunctionClosed
    (And.intro E.asymptoticStabilityClosed E.robustnessClosed)

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
