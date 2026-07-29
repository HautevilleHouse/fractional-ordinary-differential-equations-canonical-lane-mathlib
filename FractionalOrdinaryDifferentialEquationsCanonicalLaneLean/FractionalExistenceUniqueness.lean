import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalExistenceUniquenessPackage where
  existsSolution : Prop
  solutionUnique : Prop

def FractionalExistenceUniquenessClosed (P : FractionalExistenceUniquenessPackage) : Prop :=
  P.existsSolution ∧ P.solutionUnique

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse