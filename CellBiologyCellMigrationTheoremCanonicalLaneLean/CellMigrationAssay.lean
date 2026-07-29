import canonicalLaneMathlib.AdmissibleClass
import MigrationSignalingPathways

/-! 
# Cell Migration Assay Package
-/

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CellMigrationAssayPackage {C : CellAdhesionMoleculesPackage}
    {S : MigrationSignalingPathwaysPackage C} where
  woundHealingAssay : Prop
  transwellAssay : Prop
  singleCellTracking : Prop
  invasionAssay : Prop
  highThroughputScreening : Prop
  woundHealingAssayClosed : woundHealingAssay
  transwellAssayClosed : transwellAssay
  singleCellTrackingClosed : singleCellTracking
  invasionAssayClosed : invasionAssay
  highThroughputScreeningClosed : highThroughputScreening

structure CellMigrationAssayEvidence {C : CellAdhesionMoleculesPackage}
    {S : MigrationSignalingPathwaysPackage C} (A : CellMigrationAssayPackage C S) where
  woundHealingAssayClosed : A.woundHealingAssay
  transwellAssayClosed : A.transwellAssay
  singleCellTrackingClosed : A.singleCellTracking
  invasionAssayClosed : A.invasionAssay
  highThroughputScreeningClosed : A.highThroughputScreening

def CellMigrationAssayClosed {C : CellAdhesionMoleculesPackage}
    {S : MigrationSignalingPathwaysPackage C} (A : CellMigrationAssayPackage C S) : Prop :=
  A.woundHealingAssay ∧ A.transwellAssay ∧ A.singleCellTracking ∧ A.invasionAssay ∧ A.highThroughputScreening

theorem cell_migration_assay_closed_from_evidence {C : CellAdhesionMoleculesPackage}
    {S : MigrationSignalingPathwaysPackage C} (A : CellMigrationAssayPackage C S)
    (E : CellMigrationAssayEvidence A) : CellMigrationAssayClosed A := by
  exact And.intro E.woundHealingAssayClosed (And.intro E.transwellAssayClosed
    (And.intro E.singleCellTrackingClosed (And.intro E.invasionAssayClosed E.highThroughputScreeningClosed)))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse