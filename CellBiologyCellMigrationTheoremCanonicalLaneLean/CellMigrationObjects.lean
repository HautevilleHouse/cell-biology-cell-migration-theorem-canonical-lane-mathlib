import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CellMigrationSpace where
  cellType : Type
  migrationPhenotype : Type
  direction : Type
  stationaryState : Prop
  migrationState : Prop

def CellMigrationWitnessClosed (O : CellMigrationAdmittedObject) : Prop := O.collectiveMigration

structure CellMigrationAdmittedObject where
  space : CellMigrationSpace
  leaderFollowerPattern : Prop
  collectiveMigration : Prop
  conclusion : collectiveMigration

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse