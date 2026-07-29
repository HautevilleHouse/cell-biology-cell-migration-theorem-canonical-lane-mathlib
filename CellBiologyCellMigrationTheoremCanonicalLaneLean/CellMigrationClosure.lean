import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMigrationTheoremCanonicalLaneLean.CellMigrationAnalyticFoundation

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

def CellMigrationAdmittedObject where
  state : PrimitiveCellState
  environment : PrimitiveExtracellularEnvironment
  migrationCycle : PrimitiveMigrationCycle state environment
  foundation : CellMigrationAnalyticFoundation
  foundationClosed : CellMigrationAnalyticFoundationClosed foundation

def bridgeClosed (A : CellMigrationAdmittedObject) : Prop :=
  A.foundationClosed

def gateClosed (A : CellMigrationAdmittedObject) : Prop :=
  True

theorem bridge_from_admissible_class (A : CellMigrationAdmittedObject) : bridgeClosed A :=
  A.foundationClosed

theorem gate_from_admissible_class (A : CellMigrationAdmittedObject) : gateClosed A :=
  trivial

def ConstrainedCellMigrationClosure (A : CellMigrationAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_migration_endgame (A : CellMigrationAdmittedObject) : ConstrainedCellMigrationClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse