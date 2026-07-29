import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CytoskeletalMechanicsPackage where
  actinPolymerization : Prop
  myosinContractility : Prop
  lamellipodiumProtrusion : Prop
  filopodiumExtension : Prop
  cortexRigidity : Prop

structure CytoskeletalMechanicsEvidence (C : CytoskeletalMechanicsPackage) where
  actinPolymerizationClosed : C.actinPolymerization
  myosinContractilityClosed : C.myosinContractility
  lamellipodiumProtrusionClosed : C.lamellipodiumProtrusion
  filopodiumExtensionClosed : C.filopodiumExtension
  cortexRigidityClosed : C.cortexRigidity

def CytoskeletalMechanicsClosed (C : CytoskeletalMechanicsPackage) : Prop :=
  C.actinPolymerization ∧ C.myosinContractility ∧
  C.lamellipodiumProtrusion ∧ C.filopodiumExtension ∧ C.cortexRigidity

theorem cytoskeletal_mechanics_closed_from_evidence
    (C : CytoskeletalMechanicsPackage) (E : CytoskeletalMechanicsEvidence C) :
    CytoskeletalMechanicsClosed C := by
  exact And.intro E.actinPolymerizationClosed
    (And.intro E.myosinContractilityClosed
      (And.intro E.lamellipodiumProtrusionClosed
        (And.intro E.filopodiumExtensionClosed E.cortexRigidityClosed)))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse