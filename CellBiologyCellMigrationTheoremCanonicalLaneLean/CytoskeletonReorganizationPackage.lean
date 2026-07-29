import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CytoskeletonReorganizationPackage where
  actinPolymerization : Prop
  myosinContraction : Prop
  microtubuleDynamics : Prop
  actinPolymerizationClosed : actinPolymerization
  myosinContractionClosed : myosinContraction
  microtubuleDynamicsClosed : microtubuleDynamics

structure CytoskeletonReorganizationEvidence (C : CytoskeletonReorganizationPackage) where
  actinPolymerizationClosed : C.actinPolymerization
  myosinContractionClosed : C.myosinContraction
  microtubuleDynamicsClosed : C.microtubuleDynamics

def CytoskeletonReorganizationClosed (C : CytoskeletonReorganizationPackage) : Prop :=
  C.actinPolymerization ∧ C.myosinContraction ∧ C.microtubuleDynamics

theorem cytoskeleton_reorganization_closed_from_evidence (C : CytoskeletonReorganizationPackage) (E : CytoskeletonReorganizationEvidence C) :
    CytoskeletonReorganizationClosed C := by
  exact And.intro E.actinPolymerizationClosed (And.intro E.myosinContractionClosed E.microtubuleDynamicsClosed)

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse