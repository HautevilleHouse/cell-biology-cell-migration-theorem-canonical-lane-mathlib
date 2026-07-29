import canonicalLaneMathlib.AdmissibleClass

/-!
# Directional Sensing Package

Models gradient sensing, polarity establishment, and persistent migration direction.
-/

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure DirectionalSensingPackage where
  chemokineGradientDetection : Prop
  cellPolarityEstablishment : Prop
  leadingEdgeProtrusion : Prop
  persistentMigration : Prop

structure DirectionalSensingEvidence (D : DirectionalSensingPackage) where
  chemokineGradientDetectionClosed : D.chemokineGradientDetection
  cellPolarityEstablishmentClosed : D.cellPolarityEstablishment
  leadingEdgeProtrusionClosed : D.leadingEdgeProtrusion
  persistentMigrationClosed : D.persistentMigration

def DirectionalSensingClosed (D : DirectionalSensingPackage) : Prop :=
  D.chemokineGradientDetection ∧ D.cellPolarityEstablishment ∧
  D.leadingEdgeProtrusion ∧ D.persistentMigration

theorem directional_sensing_closed_from_evidence
    (D : DirectionalSensingPackage) (E : DirectionalSensingEvidence D) :
    DirectionalSensingClosed D := by
  exact And.intro E.chemokineGradientDetectionClosed
    (And.intro E.cellPolarityEstablishmentClosed
      (And.intro E.leadingEdgeProtrusionClosed E.persistentMigrationClosed))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse
