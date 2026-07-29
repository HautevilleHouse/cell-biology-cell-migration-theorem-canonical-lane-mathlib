import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure ChemotaxisSensingPackage where
  gradientDetection : Prop
  receptorBinding : Prop
  signalAmplification : Prop
  directionalBias : Prop

structure ChemotaxisSensingEvidence (C : ChemotaxisSensingPackage) where
  gradientDetectionClosed : C.gradientDetection
  receptorBindingClosed : C.receptorBinding
  signalAmplificationClosed : C.signalAmplification
  directionalBiasClosed : C.directionalBias

def ChemotaxisSensingClosed (C : ChemotaxisSensingPackage) : Prop :=
  C.gradientDetection ∧ C.receptorBinding ∧ C.signalAmplification ∧ C.directionalBias

theorem chemotaxis_sensing_closed_from_evidence (C : ChemotaxisSensingPackage) (E : ChemotaxisSensingEvidence C) :
    ChemotaxisSensingClosed C := by
  exact And.intro E.gradientDetectionClosed
    (And.intro E.receptorBindingClosed
      (And.intro E.signalAmplificationClosed E.directionalBiasClosed))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse