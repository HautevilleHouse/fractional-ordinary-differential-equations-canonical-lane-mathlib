import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FractionalOrdinaryDifferentialEquationsCanonicalLaneLean.FractionalPDE

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure ExistenceUniquenessPackage {α : Type} {F : FractionalDerivativePackage α}
    (FPDE : FractionalPDE α F) where
  localExistence : Prop
  uniqueness : Prop
  continuationCriterion : Prop

structure ExistenceUniquenessEvidence {α : Type} {F : FractionalDerivativePackage α}
    {FPDE : FractionalPDE α F} (EUP : ExistenceUniquenessPackage FPDE) where
  localExistenceClosed : EUP.localExistence
  uniquenessClosed : EUP.uniqueness
  continuationCriterionClosed : EUP.continuationCriterion

def ExistenceUniquenessClosed {α : Type} {F : FractionalDerivativePackage α}
    {FPDE : FractionalPDE α F} (EUP : ExistenceUniquenessPackage FPDE) : Prop :=
  EUP.localExistence ∧ EUP.uniqueness ∧ EUP.continuationCriterion

theorem existence_uniqueness_closed_from_evidence {α : Type} {F : FractionalDerivativePackage α}
    {FPDE : FractionalPDE α F} (EUP : ExistenceUniquenessPackage FPDE)
    (E : ExistenceUniquenessEvidence EUP) : ExistenceUniquenessClosed EUP := by
  exact And.intro E.localExistenceClosed
    (And.intro E.uniquenessClosed E.continuationCriterionClosed)

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse
