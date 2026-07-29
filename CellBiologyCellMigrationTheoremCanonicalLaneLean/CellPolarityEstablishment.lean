import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CellPolarityEstablishmentPackage where
  frontRearAsymmetry : Prop
  rhoGTPaseSignaling : Prop
  microtubuleOrganizingCenterPosition : Prop
  golgiOrientation : Prop

structure CellPolarityEstablishmentEvidence (C : CellPolarityEstablishmentPackage) where
  frontRearAsymmetryClosed : C.frontRearAsymmetry
  rhoGTPaseSignalingClosed : C.rhoGTPaseSignaling
  microtubuleOrganizingCenterPositionClosed : C.microtubuleOrganizingCenterPosition
  golgiOrientationClosed : C.golgiOrientation

def CellPolarityEstablishmentClosed (C : CellPolarityEstablishmentPackage) : Prop :=
  C.frontRearAsymmetry ∧ C.rhoGTPaseSignaling ∧ C.microtubuleOrganizingCenterPosition ∧ C.golgiOrientation

theorem cell_polarity_establishment_closed_from_evidence (C : CellPolarityEstablishmentPackage) (E : CellPolarityEstablishmentEvidence C) : CellPolarityEstablishmentClosed C := by
  exact And.intro E.frontRearAsymmetryClosed (And.intro E.rhoGTPaseSignalingClosed (And.intro E.microtubuleOrganizingCenterPositionClosed E.golgiOrientationClosed))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse