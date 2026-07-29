import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure EndpointInvasionAssayPackage where
  transwellMigrationCount : Prop
  woundHealingClosureRate : Prop
  chemotacticIndex : Prop
  matrixDegradationActivity : Prop
  invasionDepthMetric : Prop

structure EndpointInvasionAssayEvidence (E : EndpointInvasionAssayPackage) where
  transwellMigrationCountClosed : E.transwellMigrationCount
  woundHealingClosureRateClosed : E.woundHealingClosureRate
  chemotacticIndexClosed : E.chemotacticIndex
  matrixDegradationActivityClosed : E.matrixDegradationActivity
  invasionDepthMetricClosed : E.invasionDepthMetric

def EndpointInvasionAssayClosed (E : EndpointInvasionAssayPackage) : Prop :=
  E.transwellMigrationCount ∧ E.woundHealingClosureRate ∧
  E.chemotacticIndex ∧ E.matrixDegradationActivity ∧ E.invasionDepthMetric

theorem endpoint_invasion_assay_closed_from_evidence (E : EndpointInvasionAssayPackage)
    (I : EndpointInvasionAssayEvidence E) : EndpointInvasionAssayClosed E := by
  exact And.intro I.transwellMigrationCountClosed
    (And.intro I.woundHealingClosureRateClosed
      (And.intro I.chemotacticIndexClosed
        (And.intro I.matrixDegradationActivityClosed
          I.invasionDepthMetricClosed)))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse