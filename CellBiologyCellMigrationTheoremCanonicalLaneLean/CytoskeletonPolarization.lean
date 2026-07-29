import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMigrationTheoremCanonicalLaneLean.AdhesionDynamics

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CytoskeletonPolarizationPackage {C : PrimitiveCellState} {E : PrimitiveExtracellularEnvironment} {M : PrimitiveMigrationCycle C E} {Ch : ChemotaxisPDEPackage M} {Ad : AdhesionDynamicsPackage Ch} where
  actinPolymerization : Prop
  myosinContraction : Prop
  microtubuleGuidance : Prop
  frontRearPolarity : Prop
  actinPolymerizationTerm : actinPolymerization
  myosinContractionTerm : myosinContraction
  microtubuleGuidanceTerm : microtubuleGuidance
  frontRearPolarityTerm : frontRearPolarity

structure CytoskeletonPolarizationEvidence {C : PrimitiveCellState} {E : PrimitiveExtracellularEnvironment} {M : PrimitiveMigrationCycle C E} {Ch : ChemotaxisPDEPackage M} {Ad : AdhesionDynamicsPackage Ch} (Pkg : CytoskeletonPolarizationPackage Ad) where
  actinPolymerizationClosed : Pkg.actinPolymerization
  myosinContractionClosed : Pkg.myosinContraction
  microtubuleGuidanceClosed : Pkg.microtubuleGuidance
  frontRearPolarityClosed : Pkg.frontRearPolarity

def CytoskeletonPolarizationClosed {C : PrimitiveCellState} {E : PrimitiveExtracellularEnvironment} {M : PrimitiveMigrationCycle C E} {Ch : ChemotaxisPDEPackage M} {Ad : AdhesionDynamicsPackage Ch} (Pkg : CytoskeletonPolarizationPackage Ad) : Prop :=
  Pkg.actinPolymerization ∧ Pkg.myosinContraction ∧ Pkg.microtubuleGuidance ∧ Pkg.frontRearPolarity

theorem cytoskeleton_polarization_closed_from_evidence {C : PrimitiveCellState} {E : PrimitiveExtracellularEnvironment} {M : PrimitiveMigrationCycle C E} {Ch : ChemotaxisPDEPackage M} {Ad : AdhesionDynamicsPackage Ch} (Pkg : CytoskeletonPolarizationPackage Ad) (Evi : CytoskeletonPolarizationEvidence Pkg) : CytoskeletonPolarizationClosed Pkg := by
  exact And.intro Evi.actinPolymerizationClosed (And.intro Evi.myosinContractionClosed (And.intro Evi.microtubuleGuidanceClosed Evi.frontRearPolarityClosed))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse