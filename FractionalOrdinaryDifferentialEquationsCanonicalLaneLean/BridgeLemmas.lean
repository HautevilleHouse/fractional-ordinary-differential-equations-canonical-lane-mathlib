import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

def FractionalODEWitnessClosed (O : FractionalODEAdmittedObject) : Prop :=
  O.existenceUniqueness

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FractionalODEWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse