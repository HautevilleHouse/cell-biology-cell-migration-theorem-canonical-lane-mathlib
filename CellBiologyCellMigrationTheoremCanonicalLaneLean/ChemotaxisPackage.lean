import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure ChemotaxisPackage where
  gradientSensing : Prop
  polarization : Prop
  lamellipodiaFormation : Prop
  gradientSensingClosed : gradientSensing
  polarizationClosed : polarization
  lamellipodiaFormationClosed : lamellipodiaFormation

structure ChemotaxisEvidence (C : ChemotaxisPackage) where
  gradientSensingClosed : C.gradientSensing
  polarizationClosed : C.polarization
  lamellipodiaFormationClosed : C.lamellipodiaFormation

def ChemotaxisClosed (C : ChemotaxisPackage) : Prop :=
  C.gradientSensing ∧ C.polarization ∧ C.lamellipodiaFormation

theorem chemotaxis_closed_from_evidence (C : ChemotaxisPackage) (E : ChemotaxisEvidence C) :
    ChemotaxisClosed C := by
  exact And.intro E.gradientSensingClosed (And.intro E.polarizationClosed E.lamellipodiaFormationClosed)

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse