import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure AdhesionTurnoverPackage where
  integrinActivation : Prop
  focalAdhesionAssembly : Prop
  focalAdhesionDisassembly : Prop
  forceTransduction : Prop
  clutchMechanism : Prop

structure AdhesionTurnoverEvidence (A : AdhesionTurnoverPackage) where
  integrinActivationClosed : A.integrinActivation
  focalAdhesionAssemblyClosed : A.focalAdhesionAssembly
  focalAdhesionDisassemblyClosed : A.focalAdhesionDisassembly
  forceTransductionClosed : A.forceTransduction
  clutchMechanismClosed : A.clutchMechanism

def AdhesionTurnoverClosed (A : AdhesionTurnoverPackage) : Prop :=
  A.integrinActivation ∧ A.focalAdhesionAssembly ∧
  A.focalAdhesionDisassembly ∧ A.forceTransduction ∧ A.clutchMechanism

theorem adhesion_turnover_closed_from_evidence (A : AdhesionTurnoverPackage)
    (E : AdhesionTurnoverEvidence A) : AdhesionTurnoverClosed A := by
  exact And.intro E.integrinActivationClosed
    (And.intro E.focalAdhesionAssemblyClosed
      (And.intro E.focalAdhesionDisassemblyClosed
        (And.intro E.forceTransductionClosed
          E.clutchMechanismClosed)))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse