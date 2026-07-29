import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CellPolarityPackage where
  frontBackAxisEstablishment : Prop
  leadingEdgeProtrusion : Prop
  cellBodyAdhesion : Prop
  trailingEdgeRetraction : Prop
  polarityFeedback : Prop

structure CellPolarityEvidence (P : CellPolarityPackage) where
  frontBackAxisEstablishmentClosed : P.frontBackAxisEstablishment
  leadingEdgeProtrusionClosed : P.leadingEdgeProtrusion
  cellBodyAdhesionClosed : P.cellBodyAdhesion
  trailingEdgeRetractionClosed : P.trailingEdgeRetraction
  polarityFeedbackClosed : P.polarityFeedback

def CellPolarityClosed (P : CellPolarityPackage) : Prop :=
  P.frontBackAxisEstablishment ∧ P.leadingEdgeProtrusion ∧
  P.cellBodyAdhesion ∧ P.trailingEdgeRetraction ∧ P.polarityFeedback

theorem cell_polarity_closed_from_evidence (P : CellPolarityPackage)
    (Ev : CellPolarityEvidence P) : CellPolarityClosed P := by
  exact And.intro Ev.frontBackAxisEstablishmentClosed
    (And.intro Ev.leadingEdgeProtrusionClosed
      (And.intro Ev.cellBodyAdhesionClosed
        (And.intro Ev.trailingEdgeRetractionClosed Ev.polarityFeedbackClosed)))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse
