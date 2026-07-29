import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FractionalOrdinaryDifferentialEquationsCanonicalLaneLean.FractionalIVPWellPosedness

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure MittagLefflerStabilityPackage {D : FractionalDerivativeOperator} {P : FractionalIVPWellPosednessPackage D} where
  mittagLefflerFunction : Type u
  stabilityCondition : Prop
  asymptoticDecay : Prop
  mittagLefflerDefined : mittagLefflerFunction
  stabilityTerm : stabilityCondition
  decayTerm : asymptoticDecay

structure MittagLefflerStabilityEvidence {D : FractionalDerivativeOperator} {P : FractionalIVPWellPosednessPackage D} (M : MittagLefflerStabilityPackage P) where
  stabilityClosed : M.stabilityCondition
  decayClosed : M.asymptoticDecay

def MittagLefflerStabilityClosed {D : FractionalDerivativeOperator} {P : FractionalIVPWellPosednessPackage D} (M : MittagLefflerStabilityPackage P) : Prop :=
  M.stabilityCondition ∧ M.asymptoticDecay

theorem mittag_leffler_stability_closed_from_evidence {D : FractionalDerivativeOperator} {P : FractionalIVPWellPosednessPackage D} (M : MittagLefflerStabilityPackage P) (E : MittagLefflerStabilityEvidence M) : MittagLefflerStabilityClosed M :=
  And.intro E.stabilityClosed E.decayClosed

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse