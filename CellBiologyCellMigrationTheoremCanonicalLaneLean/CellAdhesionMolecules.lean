import canonicalLaneMathlib.AdmissibleClass

/-! 
# Cell Adhesion Molecules Package
-/

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CellAdhesionMoleculesPackage where
  integrins : Prop
  cadherins : Prop
  selectins : Prop
  immunoglobulinSF : Prop
  adhesionComplexFormation : Prop
  integrinsClosed : integrins
  cadherinsClosed : cadherins
  selectinsClosed : selectins
  immunoglobulinSFClosed : immunoglobulinSF
  adhesionComplexFormationClosed : adhesionComplexFormation

structure CellAdhesionMoleculesEvidence (C : CellAdhesionMoleculesPackage) where
  integrinsClosed : C.integrins
  cadherinsClosed : C.cadherins
  selectinsClosed : C.selectins
  immunoglobulinSFClosed : C.immunoglobulinSF
  adhesionComplexFormationClosed : C.adhesionComplexFormation

def CellAdhesionMoleculesClosed (C : CellAdhesionMoleculesPackage) : Prop :=
  C.integrins ∧ C.cadherins ∧ C.selectins ∧ C.immunoglobulinSF ∧ C.adhesionComplexFormation

theorem cell_adhesion_molecules_closed_from_evidence (C : CellAdhesionMoleculesPackage)
    (E : CellAdhesionMoleculesEvidence C) : CellAdhesionMoleculesClosed C := by
  exact And.intro E.integrinsClosed (And.intro E.cadherinsClosed
    (And.intro E.selectinsClosed (And.intro E.immunoglobulinSFClosed E.adhesionComplexFormationClosed)))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse