import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMigrationTheoremCanonicalLaneLean.CytoskeletonPolarization

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure SignalTransductionPackage {C : PrimitiveCellState} {E : PrimitiveExtracellularEnvironment} {M : PrimitiveMigrationCycle C E} {Ch : ChemotaxisPDEPackage M} {Ad : AdhesionDynamicsPackage Ch} {Cy : CytoskeletonPolarizationPackage Ad} where
  rhoGTPaseCycle : Prop
  pI3KSignaling : Prop
  calciumFlux : Prop
  mapkPathway : Prop
  rhoGTPaseCycleTerm : rhoGTPaseCycle
  pI3KSignalingTerm : pI3KSignaling
  calciumFluxTerm : calciumFlux
  mapkPathwayTerm : mapkPathway

structure SignalTransductionEvidence {C : PrimitiveCellState} {E : PrimitiveExtracellularEnvironment} {M : PrimitiveMigrationCycle C E} {Ch : ChemotaxisPDEPackage M} {Ad : AdhesionDynamicsPackage Ch} {Cy : CytoskeletonPolarizationPackage Ad} (Pkg : SignalTransductionPackage Cy) where
  rhoGTPaseCycleClosed : Pkg.rhoGTPaseCycle
  pI3KSignalingClosed : Pkg.pI3KSignaling
  calciumFluxClosed : Pkg.calciumFlux
  mapkPathwayClosed : Pkg.mapkPathway

def SignalTransductionClosed {C : PrimitiveCellState} {E : PrimitiveExtracellularEnvironment} {M : PrimitiveMigrationCycle C E} {Ch : ChemotaxisPDEPackage M} {Ad : AdhesionDynamicsPackage Ch} {Cy : CytoskeletonPolarizationPackage Ad} (Pkg : SignalTransductionPackage Cy) : Prop :=
  Pkg.rhoGTPaseCycle ∧ Pkg.pI3KSignaling ∧ Pkg.calciumFlux ∧ Pkg.mapkPathway

theorem signal_transduction_closed_from_evidence {C : PrimitiveCellState} {E : PrimitiveExtracellularEnvironment} {M : PrimitiveMigrationCycle C E} {Ch : ChemotaxisPDEPackage M} {Ad : AdhesionDynamicsPackage Ch} {Cy : CytoskeletonPolarizationPackage Ad} (Pkg : SignalTransductionPackage Cy) (Evi : SignalTransductionEvidence Pkg) : SignalTransductionClosed Pkg := by
  exact And.intro Evi.rhoGTPaseCycleClosed (And.intro Evi.pI3KSignalingClosed (And.intro Evi.calciumFluxClosed Evi.mapkPathwayClosed))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse