import canonicalLaneMathlib.AdmissibleClass
import CellMigrationAssay

/-! 
# Extracellular Matrix Interactions Package
-/

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure ExtracellularMatrixInteractionsPackage {C : CellAdhesionMoleculesPackage}
    {S : MigrationSignalingPathwaysPackage C} {A : CellMigrationAssayPackage C S} where
  collagenBinding : Prop
  fibronectinBinding : Prop
  lamininBinding : Prop
  matrixDegradation : Prop
  mechanotransduction : Prop
  collagenBindingClosed : collagenBinding
  fibronectinBindingClosed : fibronectinBinding
  lamininBindingClosed : lamininBinding
  matrixDegradationClosed : matrixDegradation
  mechanotransductionClosed : mechanotransduction

structure ExtracellularMatrixInteractionsEvidence {C : CellAdhesionMoleculesPackage}
    {S : MigrationSignalingPathwaysPackage C} {A : CellMigrationAssayPackage C S}
    (E : ExtracellularMatrixInteractionsPackage C S A) where
  collagenBindingClosed : E.collagenBinding
  fibronectinBindingClosed : E.fibronectinBinding
  lamininBindingClosed : E.lamininBinding
  matrixDegradationClosed : E.matrixDegradation
  mechanotransductionClosed : E.mechanotransduction

def ExtracellularMatrixInteractionsClosed {C : CellAdhesionMoleculesPackage}
    {S : MigrationSignalingPathwaysPackage C} {A : CellMigrationAssayPackage C S}
    (E : ExtracellularMatrixInteractionsPackage C S A) : Prop :=
  E.collagenBinding ∧ E.fibronectinBinding ∧ E.lamininBinding ∧ E.matrixDegradation ∧ E.mechanotransduction

theorem extracellular_matrix_interactions_closed_from_evidence {C : CellAdhesionMoleculesPackage}
    {S : MigrationSignalingPathwaysPackage C} {A : CellMigrationAssayPackage C S}
    (E : ExtracellularMatrixInteractionsPackage C S A) (Ev : ExtracellularMatrixInteractionsEvidence E) :
    ExtracellularMatrixInteractionsClosed E := by
  exact And.intro Ev.collagenBindingClosed (And.intro Ev.fibronectinBindingClosed
    (And.intro Ev.lamininBindingClosed (And.intro Ev.matrixDegradationClosed Ev.mechanotransductionClosed)))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse