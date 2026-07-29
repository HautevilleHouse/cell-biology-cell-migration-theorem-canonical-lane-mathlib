import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure RhoGtpaseSignalingPackage where
  activatedRho : Prop
  rocKinaseActivation : Prop
  myosinContractility : Prop
  stressFiberFormation : Prop

structure RhoGtpaseSignalingEvidence (R : RhoGtpaseSignalingPackage) where
  activatedRhoClosed : R.activatedRho
  rocKinaseActivationClosed : R.rocKinaseActivation
  myosinContractilityClosed : R.myosinContractility
  stressFiberFormationClosed : R.stressFiberFormation

def RhoGtpaseSignalingClosed (R : RhoGtpaseSignalingPackage) : Prop :=
  R.activatedRho ∧ R.rocKinaseActivation ∧ R.myosinContractility ∧ R.stressFiberFormation

theorem rho_gtpase_signaling_closed_from_evidence (R : RhoGtpaseSignalingPackage) (E : RhoGtpaseSignalingEvidence R) :
    RhoGtpaseSignalingClosed R := by
  exact And.intro E.activatedRhoClosed
    (And.intro E.rocKinaseActivationClosed
      (And.intro E.myosinContractilityClosed E.stressFiberFormationClosed))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse