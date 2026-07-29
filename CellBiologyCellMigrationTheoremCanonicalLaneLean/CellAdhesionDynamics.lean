import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CellAdhesionDynamicsPackage where
  integrinBindingRate : Prop
  focalAdhesionAssembly : Prop
  tractionsGenerated : Prop
  adhesionTurnover : Prop

structure CellAdhesionDynamicsEvidence (C : CellAdhesionDynamicsPackage) where
  integrinBindingRateClosed : C.integrinBindingRate
  focalAdhesionAssemblyClosed : C.focalAdhesionAssembly
  tractionsGeneratedClosed : C.tractionsGenerated
  adhesionTurnoverClosed : C.adhesionTurnover

def CellAdhesionDynamicsClosed (C : CellAdhesionDynamicsPackage) : Prop :=
  C.integrinBindingRate ∧ C.focalAdhesionAssembly ∧ C.tractionsGenerated ∧ C.adhesionTurnover

theorem cell_adhesion_dynamics_closed_from_evidence (C : CellAdhesionDynamicsPackage) (E : CellAdhesionDynamicsEvidence C) :
    CellAdhesionDynamicsClosed C := by
  exact And.intro E.integrinBindingRateClosed
    (And.intro E.focalAdhesionAssemblyClosed
      (And.intro E.tractionsGeneratedClosed E.adhesionTurnoverClosed))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse