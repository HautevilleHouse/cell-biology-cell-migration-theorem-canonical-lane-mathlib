import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMigrationTheoremCanonicalLaneLean.SignalTransductionNetwork

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CellMigrationAnalyticFoundation where
  cellState : PrimitiveCellState
  cellStateEvidence : cellState.signalingPathwayActivation ∧ cellState.cytoskeletonDynamics
  environment : PrimitiveExtracellularEnvironment
  environmentEvidence : environment.matrixStiffness ∧ environment.gradientPresent
  migrationCycle : PrimitiveMigrationCycle cellState environment
  migrationCycleEvidence : migrationCycle.protrusion ∧ migrationCycle.adhesion ∧ migrationCycle.contraction ∧ migrationCycle.rearRetraction
  chemotaxisPDE : ChemotaxisPDEPackage migrationCycle
  chemotaxisPDEEvidence : ChemotaxisPDEEvidence chemotaxisPDE
  adhesionDynamics : AdhesionDynamicsPackage chemotaxisPDE
  adhesionDynamicsEvidence : AdhesionDynamicsEvidence adhesionDynamics
  cytoskeletonPolarization : CytoskeletonPolarizationPackage adhesionDynamics
  cytoskeletonPolarizationEvidence : CytoskeletonPolarizationEvidence cytoskeletonPolarization
  signalTransduction : SignalTransductionPackage cytoskeletonPolarization
  signalTransductionEvidence : SignalTransductionEvidence signalTransduction

def CellMigrationAnalyticFoundationClosed (A : CellMigrationAnalyticFoundation) : Prop :=
  PrimitiveCellMigrationSystemClosed A.cellState A.environment A.migrationCycle ∧
  ChemotaxisPDEClosed A.chemotaxisPDE ∧
  AdhesionDynamicsClosed A.adhesionDynamics ∧
  CytoskeletonPolarizationClosed A.cytoskeletonPolarization ∧
  SignalTransductionClosed A.signalTransduction

theorem cell_migration_analytic_foundation_closed_from_evidence (A : CellMigrationAnalyticFoundation) : CellMigrationAnalyticFoundationClosed A := by
  refine And.intro (primitive_cell_migration_system_closed A.cellState A.environment A.migrationCycle
    A.cellStateEvidence.1 A.cellStateEvidence.2
    A.environmentEvidence.1 A.environmentEvidence.2
    A.migrationCycleEvidence.1 A.migrationCycleEvidence.2 A.migrationCycleEvidence.3 A.migrationCycleEvidence.4)
    (And.intro (chemotaxis_pde_closed_from_evidence A.chemotaxisPDE A.chemotaxisPDEEvidence)
      (And.intro (adhesion_dynamics_closed_from_evidence A.adhesionDynamics A.adhesionDynamicsEvidence)
        (And.intro (cytoskeleton_polarization_closed_from_evidence A.cytoskeletonPolarization A.cytoskeletonPolarizationEvidence)
          (signal_transduction_closed_from_evidence A.signalTransduction A.signalTransductionEvidence))))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse