import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure EndocytosisCyclePackage where
  clathrinCoatedPitFormation : Prop
  cargoInternalization : Prop
  vesicleScission : Prop
  uncoating : Prop
  signalingRegulation : Prop

structure EndocytosisCycleEvidence (E : EndocytosisCyclePackage) where
  clathrinCoatedPitFormationClosed : E.clathrinCoatedPitFormation
  cargoInternalizationClosed : E.cargoInternalization
  vesicleScissionClosed : E.vesicleScission
  uncoatingClosed : E.uncoating
  signalingRegulationClosed : E.signalingRegulation

def EndocytosisCycleClosed (E : EndocytosisCyclePackage) : Prop :=
  E.clathrinCoatedPitFormation ∧ E.cargoInternalization ∧
  E.vesicleScission ∧ E.uncoating ∧ E.signalingRegulation

theorem endocytosis_cycle_closed_from_evidence (E : EndocytosisCyclePackage)
    (Ev : EndocytosisCycleEvidence E) : EndocytosisCycleClosed E := by
  exact And.intro Ev.clathrinCoatedPitFormationClosed
    (And.intro Ev.cargoInternalizationClosed
      (And.intro Ev.vesicleScissionClosed
        (And.intro Ev.uncoatingClosed Ev.signalingRegulationClosed)))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse
