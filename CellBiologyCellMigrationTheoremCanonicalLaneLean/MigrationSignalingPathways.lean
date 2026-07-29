import canonicalLaneMathlib.AdmissibleClass
import CellAdhesionMolecules

/-! 
# Migration Signaling Pathways Package
-/

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure MigrationSignalingPathwaysPackage (C : CellAdhesionMoleculesPackage) where
  rhoGTPaseActivation : Prop
  racActivation : Prop
  cdc42Activation : Prop
  pi3kAktSignaling : Prop
  mapkSignaling : Prop
  rhoGTPaseActivationClosed : rhoGTPaseActivation
  racActivationClosed : racActivation
  cdc42ActivationClosed : cdc42Activation
  pi3kAktSignalingClosed : pi3kAktSignaling
  mapkSignalingClosed : mapkSignaling

structure MigrationSignalingPathwaysEvidence {C : CellAdhesionMoleculesPackage}
    (S : MigrationSignalingPathwaysPackage C) where
  rhoGTPaseActivationClosed : S.rhoGTPaseActivation
  racActivationClosed : S.racActivation
  cdc42ActivationClosed : S.cdc42Activation
  pi3kAktSignalingClosed : S.pi3kAktSignaling
  mapkSignalingClosed : S.mapkSignaling

def MigrationSignalingPathwaysClosed {C : CellAdhesionMoleculesPackage}
    (S : MigrationSignalingPathwaysPackage C) : Prop :=
  S.rhoGTPaseActivation ∧ S.racActivation ∧ S.cdc42Activation ∧ S.pi3kAktSignaling ∧ S.mapkSignaling

theorem migration_signaling_pathways_closed_from_evidence {C : CellAdhesionMoleculesPackage}
    (S : MigrationSignalingPathwaysPackage C) (E : MigrationSignalingPathwaysEvidence S) :
    MigrationSignalingPathwaysClosed S := by
  exact And.intro E.rhoGTPaseActivationClosed (And.intro E.racActivationClosed
    (And.intro E.cdc42ActivationClosed (And.intro E.pi3kAktSignalingClosed E.mapkSignalingClosed)))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse