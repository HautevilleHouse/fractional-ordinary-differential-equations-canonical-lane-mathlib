import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FractionalOrdinaryDifferentialEquationsCanonicalLaneLean.MittagLefflerStability

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalComparisonPrinciplePackage {D : FractionalDerivativeOperator} {P : FractionalIVPWellPosednessPackage D} {M : MittagLefflerStabilityPackage P} where
  comparisonInequality : Prop
  monotonicity : Prop
  boundedness : Prop
  comparisonTerm : comparisonInequality
  monotonicityTerm : monotonicity
  boundednessTerm : boundedness

structure FractionalComparisonPrincipleEvidence {D : FractionalDerivativeOperator} {P : FractionalIVPWellPosednessPackage D} {M : MittagLefflerStabilityPackage P} (C : FractionalComparisonPrinciplePackage M) where
  comparisonClosed : C.comparisonInequality
  monotonicityClosed : C.monotonicity
  boundednessClosed : C.boundedness

def FractionalComparisonPrincipleClosed {D : FractionalDerivativeOperator} {P : FractionalIVPWellPosednessPackage D} {M : MittagLefflerStabilityPackage P} (C : FractionalComparisonPrinciplePackage M) : Prop :=
  C.comparisonInequality ∧ C.monotonicity ∧ C.boundedness

theorem fractional_comparison_principle_closed_from_evidence {D : FractionalDerivativeOperator} {P : FractionalIVPWellPosednessPackage D} {M : MittagLefflerStabilityPackage P} (C : FractionalComparisonPrinciplePackage M) (E : FractionalComparisonPrincipleEvidence C) : FractionalComparisonPrincipleClosed C :=
  And.intro E.comparisonClosed (And.intro E.monotonicityClosed E.boundednessClosed)

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse