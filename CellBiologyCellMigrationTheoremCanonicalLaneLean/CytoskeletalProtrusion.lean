import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CytoskeletalProtrusionPackage where
  actinPolymerization : Prop
  arp2_3Branching : Prop
  forminElongation : Prop
  coffilinSevering : Prop
  membraneProtrusionForce : Prop

structure CytoskeletalProtrusionEvidence (C : CytoskeletalProtrusionPackage) where
  actinPolymerizationClosed : C.actinPolymerization
  arp2_3BranchingClosed : C.arp2_3Branching
  forminElongationClosed : C.forminElongation
  coffilinSeveringClosed : C.coffilinSevering
  membraneProtrusionForceClosed : C.membraneProtrusionForce

def CytoskeletalProtrusionClosed (C : CytoskeletalProtrusionPackage) : Prop :=
  C.actinPolymerization ∧ C.arp2_3Branching ∧
  C.forminElongation ∧ C.coffilinSevering ∧ C.membraneProtrusionForce

theorem cytoskeletal_protrusion_closed_from_evidence (C : CytoskeletalProtrusionPackage)
    (E : CytoskeletalProtrusionEvidence C) : CytoskeletalProtrusionClosed C := by
  exact And.intro E.actinPolymerizationClosed
    (And.intro E.arp2_3BranchingClosed
      (And.intro E.forminElongationClosed
        (And.intro E.coffilinSeveringClosed
          E.membraneProtrusionForceClosed)))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse