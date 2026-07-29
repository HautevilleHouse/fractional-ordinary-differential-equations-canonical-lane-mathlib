import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

def gateClosed (A : FractionalAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : FractionalAdmissibleClass) : gateClosed A :=
  A.gateWitness

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse