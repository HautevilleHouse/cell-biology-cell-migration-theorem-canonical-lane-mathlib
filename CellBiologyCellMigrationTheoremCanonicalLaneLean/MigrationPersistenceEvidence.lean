import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMigrationTheoremCanonicalLaneLean.CellAdhesionDynamics
import HautevilleHouse.CellBiologyCellMigrationTheoremCanonicalLaneLean.CytoskeletonRemodeling

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure MigrationPersistencePackage {C : MigrationState} (A : AdhesionDynamicsPackage C) (R : CytoskeletonRemodelingPackage C) where
  persistenceIndex : ℝ
  directionalityIndex : ℝ
  persistenceThreshold : ℝ
  directionalityThreshold : ℝ
  persistenceAboveThreshold : persistenceIndex ≥ persistenceThreshold
  directionalityAboveThreshold : directionalityIndex ≥ directionalityThreshold

def MigrationPersistenceClosed {C : MigrationState} {A : AdhesionDynamicsPackage C} {R : CytoskeletonRemodelingPackage C} (P : MigrationPersistencePackage A R) : Prop :=
  P.persistenceAboveThreshold ∧ P.directionalityAboveThreshold

structure MigrationPersistenceEvidence {C : MigrationState} {A : AdhesionDynamicsPackage C} {R : CytoskeletonRemodelingPackage C} (P : MigrationPersistencePackage A R) where
  persistenceAboveThresholdClosed : P.persistenceAboveThreshold
  directionalityAboveThresholdClosed : P.directionalityAboveThreshold

theorem migration_persistence_closed_from_evidence {C : MigrationState} {A : AdhesionDynamicsPackage C} {R : CytoskeletonRemodelingPackage C} (P : MigrationPersistencePackage A R) (E : MigrationPersistenceEvidence P) : MigrationPersistenceClosed P :=
  And.intro E.persistenceAboveThresholdClosed E.directionalityAboveThresholdClosed

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse