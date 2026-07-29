import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMigrationTheoremCanonicalLaneLean.ChemotaxisGradientPDE

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure AdhesionDynamicsPackage {C : PrimitiveCellState} {E : PrimitiveExtracellularEnvironment} {M : PrimitiveMigrationCycle C E} {Ch : ChemotaxisPDEPackage M} where
  focalAdhesionAssembly : Prop
  integrinBinding : Prop
  adhesionTurnover : Prop
  mechanosensing : Prop
  focalAdhesionAssemblyTerm : focalAdhesionAssembly
  integrinBindingTerm : integrinBinding
  adhesionTurnoverTerm : adhesionTurnover
  mechanosensingTerm : mechanosensing

structure AdhesionDynamicsEvidence {C : PrimitiveCellState} {E : PrimitiveExtracellularEnvironment} {M : PrimitiveMigrationCycle C E} {Ch : ChemotaxisPDEPackage M} (Pkg : AdhesionDynamicsPackage Ch) where
  focalAdhesionAssemblyClosed : Pkg.focalAdhesionAssembly
  integrinBindingClosed : Pkg.integrinBinding
  adhesionTurnoverClosed : Pkg.adhesionTurnover
  mechanosensingClosed : Pkg.mechanosensing

def AdhesionDynamicsClosed {C : PrimitiveCellState} {E : PrimitiveExtracellularEnvironment} {M : PrimitiveMigrationCycle C E} {Ch : ChemotaxisPDEPackage M} (Pkg : AdhesionDynamicsPackage Ch) : Prop :=
  Pkg.focalAdhesionAssembly ∧ Pkg.integrinBinding ∧ Pkg.adhesionTurnover ∧ Pkg.mechanosensing

theorem adhesion_dynamics_closed_from_evidence {C : PrimitiveCellState} {E : PrimitiveExtracellularEnvironment} {M : PrimitiveMigrationCycle C E} {Ch : ChemotaxisPDEPackage M} (Pkg : AdhesionDynamicsPackage Ch) (Evi : AdhesionDynamicsEvidence Pkg) : AdhesionDynamicsClosed Pkg := by
  exact And.intro Evi.focalAdhesionAssemblyClosed (And.intro Evi.integrinBindingClosed (And.intro Evi.adhesionTurnoverClosed Evi.mechanosensingClosed))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse