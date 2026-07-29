import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure MigrationSpeedRegulationPackage where
  protrusionForceGeneration : Prop
  adhesionStrength : Prop
  contractileBlebbing : Prop
  trailingEdgeRetraction : Prop

structure MigrationSpeedRegulationEvidence (M : MigrationSpeedRegulationPackage) where
  protrusionForceGenerationClosed : M.protrusionForceGeneration
  adhesionStrengthClosed : M.adhesionStrength
  contractileBlebbingClosed : M.contractileBlebbing
  trailingEdgeRetractionClosed : M.trailingEdgeRetraction

def MigrationSpeedRegulationClosed (M : MigrationSpeedRegulationPackage) : Prop :=
  M.protrusionForceGeneration ∧ M.adhesionStrength ∧ M.contractileBlebbing ∧ M.trailingEdgeRetraction

theorem migration_speed_regulation_closed_from_evidence (M : MigrationSpeedRegulationPackage) (E : MigrationSpeedRegulationEvidence M) : MigrationSpeedRegulationClosed M := by
  exact And.intro E.protrusionForceGenerationClosed (And.intro E.adhesionStrengthClosed (And.intro E.contractileBlebbingClosed E.trailingEdgeRetractionClosed))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse