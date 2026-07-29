import canonicalLaneMathlib.AdmissibleClass
import CellMigrationAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.migrationCapacity

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse