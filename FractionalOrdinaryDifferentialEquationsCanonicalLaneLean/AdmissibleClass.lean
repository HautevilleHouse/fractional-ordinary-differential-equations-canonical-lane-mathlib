import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalODEAdmittedObject where
  space : Type u
  fractionalOrder : ℝ
  fractionalOperator : Type v
  solutionSpace : Type w
  initialConditionDefined : Prop
  existenceUniqueness : Prop
  conclusion : existenceUniqueness

structure AdmissibleClass where
  object : FractionalODEAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FractionalODEWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse