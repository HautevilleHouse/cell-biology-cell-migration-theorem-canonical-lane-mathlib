import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure PolaritySignalingPackage where
  cdc42GtpActivation : Prop
  racGtpActivation : Prop
  rhoGtpInhibition : Prop
  pt3kPip3Gradient : Prop
  feedbackAmplification : Prop

structure PolaritySignalingEvidence (P : PolaritySignalingPackage) where
  cdc42GtpActivationClosed : P.cdc42GtpActivation
  racGtpActivationClosed : P.racGtpActivation
  rhoGtpInhibitionClosed : P.rhoGtpInhibition
  pt3kPip3GradientClosed : P.pt3kPip3Gradient
  feedbackAmplificationClosed : P.feedbackAmplification

def PolaritySignalingClosed (P : PolaritySignalingPackage) : Prop :=
  P.cdc42GtpActivation ∧ P.racGtpActivation ∧
  P.rhoGtpInhibition ∧ P.pt3kPip3Gradient ∧ P.feedbackAmplification

theorem polarity_signaling_closed_from_evidence (P : PolaritySignalingPackage)
    (E : PolaritySignalingEvidence P) : PolaritySignalingClosed P := by
  exact And.intro E.cdc42GtpActivationClosed
    (And.intro E.racGtpActivationClosed
      (And.intro E.rhoGtpInhibitionClosed
        (And.intro E.pt3kPip3GradientClosed
          E.feedbackAmplificationClosed)))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse