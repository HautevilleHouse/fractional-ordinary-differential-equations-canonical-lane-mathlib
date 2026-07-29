import canonicalLaneMathlib.TheoremStatement

namespace HautevilleHouse
namespace FractionalOrdinaryDifferentialEquationsCanonicalLaneLean

structure FractionalODETheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

def fractionalODETheoremStatement : FractionalODETheoremStatement :=
  { sourceKey := "fractional-ode-canonical-lane"
    theoremName := "Fractional Ordinary Differential Equations"
    theoremObject := "Admissible class closure for fractional ODE existence and uniqueness"
    classicalBoundary := "Unrestricted classical boundary carried"
    manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates"
    certificateLane := "manifold_constrained"
    carriedRemainder := "classical source boundary carried by theorem boundary open"
  }

theorem fractional_ode_theorem_statement_key_checked :
    fractionalODETheoremStatement.sourceKey = "fractional-ode-canonical-lane" := by
  rfl

end FractionalOrdinaryDifferentialEquationsCanonicalLaneLean
end HautevilleHouse