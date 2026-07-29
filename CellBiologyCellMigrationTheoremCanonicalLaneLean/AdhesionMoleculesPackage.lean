import HautevilleHouse.CellBiologyCellMigrationTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure AdhesionMoleculesPackage where
  integrinActivation : Prop
  focalAdhesionDynamics : Prop
  talinRecruitment : Prop
  forceTransmission : Prop

structure AdhesionMoleculesEvidence (P : AdhesionMoleculesPackage) where
  integrinActivationClosed : P.integrinActivation
  focalAdhesionDynamicsClosed : P.focalAdhesionDynamics
  talinRecruitmentClosed : P.talinRecruitment
  forceTransmissionClosed : P.forceTransmission

def AdhesionMoleculesClosed (P : AdhesionMoleculesPackage) : Prop :=
  P.integrinActivation ∧ P.focalAdhesionDynamics ∧ P.talinRecruitment ∧ P.forceTransmission

theorem adhesion_molecules_closed_from_evidence (P : AdhesionMoleculesPackage)
    (E : AdhesionMoleculesEvidence P) : AdhesionMoleculesClosed P := by
  exact And.intro E.integrinActivationClosed
    (And.intro E.focalAdhesionDynamicsClosed
      (And.intro E.talinRecruitmentClosed E.forceTransmissionClosed))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse