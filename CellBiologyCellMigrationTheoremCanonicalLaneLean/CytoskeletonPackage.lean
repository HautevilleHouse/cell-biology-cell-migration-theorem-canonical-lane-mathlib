import HautevilleHouse.CellBiologyCellMigrationTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CytoskeletonPackage where
  actinPolymerization : Prop
  myosinContractility : Prop
  actinBundling : Prop
  membraneProtrusion : Prop
  corticalTension : Prop

structure CytoskeletonEvidence (P : CytoskeletonPackage) where
  actinPolymerizationClosed : P.actinPolymerization
  myosinContractilityClosed : P.myosinContractility
  actinBundlingClosed : P.actinBundling
  membraneProtrusionClosed : P.membraneProtrusion
  corticalTensionClosed : P.corticalTension

def CytoskeletonClosed (P : CytoskeletonPackage) : Prop :=
  P.actinPolymerization ∧ P.myosinContractility ∧ P.actinBundling ∧ P.membraneProtrusion ∧ P.corticalTension

theorem cytoskeleton_closed_from_evidence (P : CytoskeletonPackage)
    (E : CytoskeletonEvidence P) : CytoskeletonClosed P := by
  exact And.intro E.actinPolymerizationClosed
    (And.intro E.myosinContractilityClosed
      (And.intro E.actinBundlingClosed
        (And.intro E.membraneProtrusionClosed E.corticalTensionClosed)))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse