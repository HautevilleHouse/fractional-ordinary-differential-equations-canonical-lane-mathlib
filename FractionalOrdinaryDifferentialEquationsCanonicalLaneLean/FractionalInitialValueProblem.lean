import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FractionalOrdinaryDifferentialEquationsCanonicalLaneLean.FractionalOperators

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalInitialValuePackage {F : FractionalOperatorPackage} where
  initialTime : ℝ
  initialValue : ℝ → ℝ
  fractionalOrder : ℝ
  rightHandSide : ℝ → ℝ → ℝ
  existenceSolution : Prop
  uniquenessSolution : Prop
  continuousDependence : Prop

structure FractionalInitialValueEvidence {F : FractionalOperatorPackage}
    (IVP : FractionalInitialValuePackage F) where
  existenceSolutionClosed : IVP.existenceSolution
  uniquenessSolutionClosed : IVP.uniquenessSolution
  continuousDependenceClosed : IVP.continuousDependence

def FractionalInitialValueClosed {F : FractionalOperatorPackage}
    (IVP : FractionalInitialValuePackage F) : Prop :=
  IVP.existenceSolution ∧ IVP.uniquenessSolution ∧ IVP.continuousDependence

theorem fractional_initial_value_closed_from_evidence {F : FractionalOperatorPackage}
    (IVP : FractionalInitialValuePackage F) (E : FractionalInitialValueEvidence IVP) :
    FractionalInitialValueClosed IVP := by
  exact And.intro E.existenceSolutionClosed
    (And.intro E.uniquenessSolutionClosed E.continuousDependenceClosed)

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse