import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure PrimitiveCellState where
  position : Type
  intracellularSignals : Type
  adhesionComplexes : Type
  signalingPathwayActivation : Prop
  cytoskeletonDynamics : Prop
  signalingPathwayActivationTerm : signalingPathwayActivation
  cytoskeletonDynamicsTerm : cytoskeletonDynamics

structure PrimitiveExtracellularEnvironment where
  extracellularMatrix : Type
  chemoattractantGradient : Type
  ligandConcentration : Type
  matrixStiffness : Prop
  gradientPresent : Prop
  matrixStiffnessTerm : matrixStiffness
  gradientPresentTerm : gradientPresent

structure PrimitiveMigrationCycle (C : PrimitiveCellState) (E : PrimitiveExtracellularEnvironment) where
  protrusion : Prop
  adhesion : Prop
  contraction : Prop
  rearRetraction : Prop
  protrusionTerm : protrusion
  adhesionTerm : adhesion
  contractionTerm : contraction
  rearRetractionTerm : rearRetraction

def PrimitiveCellMigrationSystemClosed (C : PrimitiveCellState) (E : PrimitiveExtracellularEnvironment) (M : PrimitiveMigrationCycle C E) : Prop :=
  C.signalingPathwayActivation ∧ C.cytoskeletonDynamics ∧ E.matrixStiffness ∧ E.gradientPresent ∧
  M.protrusion ∧ M.adhesion ∧ M.contraction ∧ M.rearRetraction

theorem primitive_cell_migration_system_closed (C : PrimitiveCellState) (E : PrimitiveExtracellularEnvironment) (M : PrimitiveMigrationCycle C E) (E_C : C.signalingPathwayActivation) (E_Cyt : C.cytoskeletonDynamicsTerm) (E_MS : E.matrixStiffnessTerm) (E_GP : E.gradientPresentTerm) (E_Pr : M.protrusionTerm) (E_Ad : M.adhesionTerm) (E_Co : M.contractionTerm) (E_RR : M.rearRetractionTerm) : PrimitiveCellMigrationSystemClosed C E M := by
  exact And.intro E_C (And.intro E_Cyt (And.intro E_MS (And.intro E_GP (And.intro E_Pr (And.intro E_Ad (And.intro E_Co E_RR))))))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse