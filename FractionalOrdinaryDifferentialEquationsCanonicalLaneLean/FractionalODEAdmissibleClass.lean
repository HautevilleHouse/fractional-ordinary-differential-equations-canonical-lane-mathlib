import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalAdmittedObject where
  object : Type
  property : Prop

structure FractionalAdmissibleClass where
  object : FractionalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : FractionalAdmissibleClass) : Prop :=
  A.object.property ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse