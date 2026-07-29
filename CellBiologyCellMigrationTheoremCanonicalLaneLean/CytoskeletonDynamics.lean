import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CytoskeletonDynamicsPackage where
  actinPolymerization : Prop
  myosinContraction : Prop
  microtubuleStabilization : Prop
  actinClosed : actinPolymerization
  myosinClosed : myosinContraction
  microtubuleClosed : microtubuleStabilization

structure CytoskeletonDynamicsEvidence (C : CytoskeletonDynamicsPackage) where
  actinClosed : C.actinPolymerization
  myosinClosed : C.myosinContraction
  microtubuleClosed : C.microtubuleStabilization

def CytoskeletonDynamicsClosed (C : CytoskeletonDynamicsPackage) : Prop :=
  C.actinPolymerization ∧ C.myosinContraction ∧ C.microtubuleStabilization

theorem cytoskeleton_dynamics_closed_from_evidence (C : CytoskeletonDynamicsPackage)
    (E : CytoskeletonDynamicsEvidence C) : CytoskeletonDynamicsClosed C := by
  exact And.intro E.actinClosed
    (And.intro E.myosinClosed E.microtubuleClosed)

end HautevilleHouse
end CellBiologyCellMigrationTheoremCanonicalLaneLean
