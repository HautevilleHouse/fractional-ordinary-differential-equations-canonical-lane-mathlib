import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalStabilityAnalysisPackage where
  equilibriumStable : Prop
  asymptoticBehavior : Prop

def FractionalStabilityClosed (P : FractionalStabilityAnalysisPackage) : Prop :=
  P.equilibriumStable ∧ P.asymptoticBehavior

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse