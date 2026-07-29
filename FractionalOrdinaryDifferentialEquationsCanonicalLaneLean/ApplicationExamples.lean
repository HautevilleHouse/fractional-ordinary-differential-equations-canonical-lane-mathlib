import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FractionalOrdinaryDifferentialEquationsCanonicalLaneLean.FractionalCalculusPackage

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure ApplicationExamplesPackage where
  viscoelasticModel : Prop
  anomalousDiffusion : Prop
  fractionalPIDControl : Prop
  bioheatTransfer : Prop

definition ApplicationExamplesClosed (A : ApplicationExamplesPackage) : Prop :=
  A.viscoelasticModel ∧ A.anomalousDiffusion ∧ A.fractionalPIDControl ∧ A.bioheatTransfer

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse