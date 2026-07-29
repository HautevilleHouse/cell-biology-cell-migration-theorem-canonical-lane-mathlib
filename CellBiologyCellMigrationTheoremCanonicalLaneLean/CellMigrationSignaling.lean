import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure MigrationSignalingPackage where
  chemotacticGradientSensing : Prop
  smallGtpaseRegulation : Prop
  integrinActivation : Prop
  cytoskeletalRearrangement : Prop
  focalAdhesionTurnover : Prop

structure MigrationSignalingEvidence (S : MigrationSignalingPackage) where
  chemotacticGradientSensingClosed : S.chemotacticGradientSensing
  smallGtpaseRegulationClosed : S.smallGtpaseRegulation
  integrinActivationClosed : S.integrinActivation
  cytoskeletalRearrangementClosed : S.cytoskeletalRearrangement
  focalAdhesionTurnoverClosed : S.focalAdhesionTurnover

def MigrationSignalingClosed (S : MigrationSignalingPackage) : Prop :=
  S.chemotacticGradientSensing ∧ S.smallGtpaseRegulation ∧
  S.integrinActivation ∧ S.cytoskeletalRearrangement ∧ S.focalAdhesionTurnover

theorem migration_signaling_closed_from_evidence (S : MigrationSignalingPackage)
    (Ev : MigrationSignalingEvidence S) : MigrationSignalingClosed S := by
  exact And.intro Ev.chemotacticGradientSensingClosed
    (And.intro Ev.smallGtpaseRegulationClosed
      (And.intro Ev.integrinActivationClosed
        (And.intro Ev.cytoskeletalRearrangementClosed Ev.focalAdhesionTurnoverClosed)))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse
