import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CellMigrationModel where
  cellType : Type u
  substrate : Type v
  migrationSpeed : Prop
  persistenceTime : Prop
  directionality : Prop
  chemotacticResponse : Prop
  speedClosed : migrationSpeed
  persistenceClosed : persistenceTime
  directionalityClosed : directionality
  chemotaxisClosed : chemotacticResponse

structure CellMigrationEvidence (M : CellMigrationModel) where
  speedClosed : M.migrationSpeed
  persistenceClosed : M.persistenceTime
  directionalityClosed : M.directionality
  chemotaxisClosed : M.chemotacticResponse

def CellMigrationModelClosed (M : CellMigrationModel) : Prop :=
  M.migrationSpeed ∧ M.persistenceTime ∧ M.directionality ∧ M.chemotacticResponse

theorem cell_migration_model_closed_from_evidence (M : CellMigrationModel)
    (E : CellMigrationEvidence M) : CellMigrationModelClosed M := by
  exact And.intro E.speedClosed
    (And.intro E.persistenceClosed
      (And.intro E.directionalityClosed E.chemotaxisClosed))

end HautevilleHouse
end CellBiologyCellMigrationTheoremCanonicalLaneLean
