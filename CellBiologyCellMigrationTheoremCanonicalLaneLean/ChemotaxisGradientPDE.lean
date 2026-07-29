import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMigrationTheoremCanonicalLaneLean.PrimitiveCellMigrationSystem

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure ChemotaxisPDEPackage {C : PrimitiveCellState} {E : PrimitiveExtracellularEnvironment} (M : PrimitiveMigrationCycle C E) where
  chemoattractantField : Type
  cellPolarization : Prop
  gradientSensing : Prop
  gradientSensingAccuracy : Prop
  directionalProtrusionBias : Prop
  cellPolarizationTerm : cellPolarization
  gradientSensingTerm : gradientSensing
  gradientSensingAccuracyTerm : gradientSensingAccuracy
  directionalProtrusionBiasTerm : directionalProtrusionBias

structure ChemotaxisPDEEvidence {C : PrimitiveCellState} {E : PrimitiveExtracellularEnvironment} {M : PrimitiveMigrationCycle C E} (Pkg : ChemotaxisPDEPackage M) where
  cellPolarizationClosed : Pkg.cellPolarization
  gradientSensingClosed : Pkg.gradientSensing
  gradientSensingAccuracyClosed : Pkg.gradientSensingAccuracy
  directionalProtrusionBiasClosed : Pkg.directionalProtrusionBias

def ChemotaxisPDEClosed {C : PrimitiveCellState} {E : PrimitiveExtracellularEnvironment} {M : PrimitiveMigrationCycle C E} (Pkg : ChemotaxisPDEPackage M) : Prop :=
  Pkg.cellPolarization ∧ Pkg.gradientSensing ∧ Pkg.gradientSensingAccuracy ∧ Pkg.directionalProtrusionBias

theorem chemotaxis_pde_closed_from_evidence {C : PrimitiveCellState} {E : PrimitiveExtracellularEnvironment} {M : PrimitiveMigrationCycle C E} (Pkg : ChemotaxisPDEPackage M) (Evi : ChemotaxisPDEEvidence Pkg) : ChemotaxisPDEClosed Pkg := by
  exact And.intro Evi.cellPolarizationClosed (And.intro Evi.gradientSensingClosed (And.intro Evi.gradientSensingAccuracyClosed Evi.directionalProtrusionBiasClosed))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse