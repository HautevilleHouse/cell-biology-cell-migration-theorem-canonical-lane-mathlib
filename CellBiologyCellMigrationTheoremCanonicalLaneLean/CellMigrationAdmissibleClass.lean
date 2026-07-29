import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CellMigrationAdmittedObject where
  cellType : Type
  matrixProperties : Prop
  adhesionMolecules : Prop
  signalingPathways : Prop
  cytoskeletonDynamics : Prop
  migrationCapacity : Prop
  conclusion : migrationCapacity

structure AdmissibleClass where
  object : CellMigrationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.migrationCapacity ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse