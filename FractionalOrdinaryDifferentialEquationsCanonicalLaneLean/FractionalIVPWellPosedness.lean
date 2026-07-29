import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FractionalOrdinaryDifferentialEquationsCanonicalLaneLean.FractionalDerivativeOperator

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalIVPWellPosednessPackage {D : FractionalDerivativeOperator} where
  initialCondition : Type u
  solutionExistsLocal : Prop
  uniquenessLocal : Prop
  continuousDependence : Prop
  solutionExistsTerm : solutionExistsLocal
  uniquenessTerm : uniquenessLocal
  continuousDependenceTerm : continuousDependence

structure FractionalIVPWellPosednessEvidence {D : FractionalDerivativeOperator} (P : FractionalIVPWellPosednessPackage D) where
  solutionExistsClosed : P.solutionExistsLocal
  uniquenessClosed : P.uniquenessLocal
  continuousDependenceClosed : P.continuousDependence

def FractionalIVPWellPosednessClosed {D : FractionalDerivativeOperator} (P : FractionalIVPWellPosednessPackage D) : Prop :=
  P.solutionExistsLocal ∧ P.uniquenessLocal ∧ P.continuousDependence

theorem fractional_ivp_well_posedness_closed_from_evidence {D : FractionalDerivativeOperator} (P : FractionalIVPWellPosednessPackage D) (E : FractionalIVPWellPosednessEvidence P) : FractionalIVPWellPosednessClosed P :=
  And.intro E.solutionExistsClosed (And.intro E.uniquenessClosed E.continuousDependenceClosed)

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse