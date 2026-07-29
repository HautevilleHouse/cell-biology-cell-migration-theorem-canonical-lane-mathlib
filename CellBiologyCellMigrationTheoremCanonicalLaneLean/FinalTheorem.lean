import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellMigrationTheoremCanonicalLaneLean.CellMigrationEndocytosis
import CellBiologyCellMigrationTheoremCanonicalLaneLean.CellMigrationPolarity
import CellBiologyCellMigrationTheoremCanonicalLaneLean.CellMigrationSignaling

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

def ConstrainedCellMigrationClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_migration_endgame (A : AdmissibleClass) :
    ConstrainedCellMigrationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse
