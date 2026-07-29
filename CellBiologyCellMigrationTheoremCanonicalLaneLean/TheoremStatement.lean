import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CellMigrationAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  cellMigrationPath : Prop
  endpointReached : Prop
  conclusion : endpointReached

def CellMigrationWitnessClosed (O : CellMigrationAdmittedObject) : Prop :=
  O.endpointReached

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse
