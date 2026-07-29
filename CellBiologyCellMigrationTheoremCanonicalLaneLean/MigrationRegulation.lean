import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMigrationTheoremCanonicalLaneLean.CellMigrationModel
import HautevilleHouse.CellBiologyCellMigrationTheoremCanonicalLaneLean.SignalingPathways
import HautevilleHouse.CellBiologyCellMigrationTheoremCanonicalLaneLean.CytoskeletonDynamics
import HautevilleHouse.CellBiologyCellMigrationTheoremCanonicalLaneLean.AdhesionDynamics

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure MigrationRegulationPackage where
  model : CellMigrationModel
  signaling : SignalingPathwaysPackage
  cytoskeleton : CytoskeletonDynamicsPackage
  adhesion : AdhesionDynamicsPackage
  modelEvidence : CellMigrationEvidence model
  signalingEvidence : SignalingPathwaysEvidence signaling
  cytoskeletonEvidence : CytoskeletonDynamicsEvidence cytoskeleton
  adhesionEvidence : AdhesionDynamicsEvidence adhesion
  regulationCoupled : Prop
  regulationCoupledClosed : regulationCoupled

structure MigrationRegulationEvidence (M : MigrationRegulationPackage) where
  modelClosed : CellMigrationModelClosed M.model
  signalingClosed : SignalingPathwaysClosed M.signaling
  cytoskeletonClosed : CytoskeletonDynamicsClosed M.cytoskeleton
  adhesionClosed : AdhesionDynamicsClosed M.adhesion
  regulationCoupledClosed : M.regulationCoupled

def MigrationRegulationClosed (M : MigrationRegulationPackage) : Prop :=
  CellMigrationModelClosed M.model ∧ SignalingPathwaysClosed M.signaling ∧
  CytoskeletonDynamicsClosed M.cytoskeleton ∧ AdhesionDynamicsClosed M.adhesion ∧
  M.regulationCoupled

theorem migration_regulation_closed_from_evidence (M : MigrationRegulationPackage)
    (E : MigrationRegulationEvidence M) : MigrationRegulationClosed M := by
  exact And.intro E.modelClosed
    (And.intro E.signalingClosed
      (And.intro E.cytoskeletonClosed
        (And.intro E.adhesionClosed E.regulationCoupledClosed)))

end HautevilleHouse
end CellBiologyCellMigrationTheoremCanonicalLaneLean
