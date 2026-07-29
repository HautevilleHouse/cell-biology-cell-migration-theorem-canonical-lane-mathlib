import canonicalLaneMathlib.AdmissibleClass

/-!
# Signal Transduction Pathways Package

Defines the Rho GTPase cycle, PI3K signaling and feedback loops controlling cell migration.
-/

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure SignalTransductionPathwaysPackage where
  rhoGTPaseCycle : Prop
  pi3kAktSignaling : Prop
  racRhoCrosstalk : Prop
  feedbackLoopRegulation : Prop

structure SignalTransductionPathwaysEvidence (S : SignalTransductionPathwaysPackage) where
  rhoGTPaseCycleClosed : S.rhoGTPaseCycle
  pi3kAktSignalingClosed : S.pi3kAktSignaling
  racRhoCrosstalkClosed : S.racRhoCrosstalk
  feedbackLoopRegulationClosed : S.feedbackLoopRegulation

def SignalTransductionPathwaysClosed (S : SignalTransductionPathwaysPackage) : Prop :=
  S.rhoGTPaseCycle ∧ S.pi3kAktSignaling ∧
  S.racRhoCrosstalk ∧ S.feedbackLoopRegulation

theorem signal_transduction_pathways_closed_from_evidence
    (S : SignalTransductionPathwaysPackage) (E : SignalTransductionPathwaysEvidence S) :
    SignalTransductionPathwaysClosed S := by
  exact And.intro E.rhoGTPaseCycleClosed
    (And.intro E.pi3kAktSignalingClosed
      (And.intro E.racRhoCrosstalkClosed E.feedbackLoopRegulationClosed))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse
