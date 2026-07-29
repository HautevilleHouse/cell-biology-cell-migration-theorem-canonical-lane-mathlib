import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure ChemotaxisGradientSensingPackage where
  gradientDetection : Prop
  receptorPolarization : Prop
  signalRelay : Prop
  directionPersistence : Prop

structure ChemotaxisGradientSensingEvidence (C : ChemotaxisGradientSensingPackage) where
  gradientDetectionClosed : C.gradientDetection
  receptorPolarizationClosed : C.receptorPolarization
  signalRelayClosed : C.signalRelay
  directionPersistenceClosed : C.directionPersistence

def ChemotaxisGradientSensingClosed (C : ChemotaxisGradientSensingPackage) : Prop :=
  C.gradientDetection ∧ C.receptorPolarization ∧ C.signalRelay ∧ C.directionPersistence

theorem chemotaxis_gradient_sensing_closed_from_evidence (C : ChemotaxisGradientSensingPackage) (E : ChemotaxisGradientSensingEvidence C) : ChemotaxisGradientSensingClosed C := by
  exact And.intro E.gradientDetectionClosed (And.intro E.receptorPolarizationClosed (And.intro E.signalRelayClosed E.directionPersistenceClosed))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse