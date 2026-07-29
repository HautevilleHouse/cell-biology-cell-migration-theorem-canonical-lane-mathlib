import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure ExtracellularMatrixInteractionPackage where
  integrinBinding : Prop
  matrixMetalloproteinaseActivity : Prop
  haptotaxisGuidance : Prop
  durotaxisResponse : Prop

structure ExtracellularMatrixInteractionEvidence (E : ExtracellularMatrixInteractionPackage) where
  integrinBindingClosed : E.integrinBinding
  matrixMetalloproteinaseActivityClosed : E.matrixMetalloproteinaseActivity
  haptotaxisGuidanceClosed : E.haptotaxisGuidance
  durotaxisResponseClosed : E.durotaxisResponse

def ExtracellularMatrixInteractionClosed (E : ExtracellularMatrixInteractionPackage) : Prop :=
  E.integrinBinding ∧ E.matrixMetalloproteinaseActivity ∧ E.haptotaxisGuidance ∧ E.durotaxisResponse

theorem extracellular_matrix_interaction_closed_from_evidence (E : ExtracellularMatrixInteractionPackage) (Ev : ExtracellularMatrixInteractionEvidence E) : ExtracellularMatrixInteractionClosed E := by
  exact And.intro Ev.integrinBindingClosed (And.intro Ev.matrixMetalloproteinaseActivityClosed (And.intro Ev.haptotaxisGuidanceClosed Ev.durotaxisResponseClosed))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse