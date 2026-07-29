import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellMigrationTheoremCanonicalLaneLean.CellAdhesionDynamics
import CellBiologyCellMigrationTheoremCanonicalLaneLean.CytoskeletonPolymerization

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure MigrationPolarityPackage {C : CellAdhesionDynamicsPackage} {P : CytoskeletonPolymerizationPackage} where
  frontRearAsymmetry : Prop
  leadingEdgeProtrusion : Prop
  cellBodyTranslocation : Prop
  trailingEdgeRetraction : Prop

structure MigrationPolarityEvidence {C : CellAdhesionDynamicsPackage} {P : CytoskeletonPolymerizationPackage} (M : MigrationPolarityPackage C P) where
  frontRearAsymmetryClosed : M.frontRearAsymmetry
  leadingEdgeProtrusionClosed : M.leadingEdgeProtrusion
  cellBodyTranslocationClosed : M.cellBodyTranslocation
  trailingEdgeRetractionClosed : M.trailingEdgeRetraction

def MigrationPolarityClosed {C : CellAdhesionDynamicsPackage} {P : CytoskeletonPolymerizationPackage} (M : MigrationPolarityPackage C P) : Prop :=
  M.frontRearAsymmetry ∧ M.leadingEdgeProtrusion ∧ M.cellBodyTranslocation ∧ M.trailingEdgeRetraction

theorem migration_polarity_closed_from_evidence {C : CellAdhesionDynamicsPackage} {P : CytoskeletonPolymerizationPackage} (M : MigrationPolarityPackage C P) (E : MigrationPolarityEvidence M) :
    MigrationPolarityClosed M := by
  exact And.intro E.frontRearAsymmetryClosed
    (And.intro E.leadingEdgeProtrusionClosed
      (And.intro E.cellBodyTranslocationClosed E.trailingEdgeRetractionClosed))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse