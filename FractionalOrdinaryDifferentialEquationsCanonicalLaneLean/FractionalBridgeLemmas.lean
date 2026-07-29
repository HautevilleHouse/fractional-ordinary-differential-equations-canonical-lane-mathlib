import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

def bridgeClosed (A : FractionalAdmissibleClass) : Prop :=
  A.object.property

theorem bridge_from_admissible_class (A : FractionalAdmissibleClass) : bridgeClosed A :=
  A.object.property

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse