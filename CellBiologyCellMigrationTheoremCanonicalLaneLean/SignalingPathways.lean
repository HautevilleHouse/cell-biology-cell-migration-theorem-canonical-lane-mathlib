import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure SignalingPathwaysPackage where
  rhoGtpaseActivation : Prop
  racGtpaseActivation : Prop
  cdc42GtpaseActivation : Prop
  pi3kSignaling : Prop
  mapkSignaling : Prop

structure SignalingPathwaysEvidence (S : SignalingPathwaysPackage) where
  rhoGtpaseActivationClosed : S.rhoGtpaseActivation
  racGtpaseActivationClosed : S.racGtpaseActivation
  cdc42GtpaseActivationClosed : S.cdc42GtpaseActivation
  pi3kSignalingClosed : S.pi3kSignaling
  mapkSignalingClosed : S.mapkSignaling

def SignalingPathwaysClosed (S : SignalingPathwaysPackage) : Prop :=
  S.rhoGtpaseActivation ∧ S.racGtpaseActivation ∧
  S.cdc42GtpaseActivation ∧ S.pi3kSignaling ∧ S.mapkSignaling

theorem signaling_pathways_closed_from_evidence
    (S : SignalingPathwaysPackage) (E : SignalingPathwaysEvidence S) :
    SignalingPathwaysClosed S := by
  exact And.intro E.rhoGtpaseActivationClosed
    (And.intro E.racGtpaseActivationClosed
      (And.intro E.cdc42GtpaseActivationClosed
        (And.intro E.pi3kSignalingClosed E.mapkSignalingClosed)))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse