import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CytoskeletonPolymerizationPackage where
  actinNucleation : Prop
  filamentElongation : Prop
  severingDepolymerization : Prop
  branchingFactor : Prop

structure CytoskeletonPolymerizationEvidence (C : CytoskeletonPolymerizationPackage) where
  actinNucleationClosed : C.actinNucleation
  filamentElongationClosed : C.filamentElongation
  severingDepolymerizationClosed : C.severingDepolymerization
  branchingFactorClosed : C.branchingFactor

def CytoskeletonPolymerizationClosed (C : CytoskeletonPolymerizationPackage) : Prop :=
  C.actinNucleation ∧ C.filamentElongation ∧ C.severingDepolymerization ∧ C.branchingFactor

theorem cytoskeleton_polymerization_closed_from_evidence (C : CytoskeletonPolymerizationPackage) (E : CytoskeletonPolymerizationEvidence C) :
    CytoskeletonPolymerizationClosed C := by
  exact And.intro E.actinNucleationClosed
    (And.intro E.filamentElongationClosed
      (And.intro E.severingDepolymerizationClosed E.branchingFactorClosed))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse