import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FractionalOrdinaryDifferentialEquationsCanonicalLaneLean.FractionalInitialValueProblem

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalStabilityPackage {F : FractionalOperatorPackage}
    (IVP : FractionalInitialValuePackage F) where
  equilibriumPoint : ℝ
  fractionalOrder : ℝ
  lyapunovFunction : Prop
  asymptoticStabilityProp : Prop
  mittagLefflerStability : Prop

structure FractionalStabilityEvidence {F : FractionalOperatorPackage}
    {IVP : FractionalInitialValuePackage F}
    (S : FractionalStabilityPackage IVP) where
  lyapunovFunctionClosed : S.lyapunovFunction
  asymptoticStabilityClosed : S.asymptoticStabilityProp
  mittagLefflerStabilityClosed : S.mittagLefflerStability

def FractionalStabilityClosed {F : FractionalOperatorPackage}
    {IVP : FractionalInitialValuePackage F}
    (S : FractionalStabilityPackage IVP) : Prop :=
  S.lyapunovFunction ∧ S.asymptoticStabilityProp ∧ S.mittagLefflerStability

theorem fractional_stability_closed_from_evidence {F : FractionalOperatorPackage}
    {IVP : FractionalInitialValuePackage F}
    (S : FractionalStabilityPackage IVP) (E : FractionalStabilityEvidence S) :
    FractionalStabilityClosed S := by
  exact And.intro E.lyapunovFunctionClosed
    (And.intro E.asymptoticStabilityClosed E.mittagLefflerStabilityClosed)

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse