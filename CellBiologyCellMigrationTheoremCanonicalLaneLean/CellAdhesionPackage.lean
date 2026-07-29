import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CellAdhesionPackage where
  integrinBinding : Prop
  focalAdhesionAssembly : Prop
  tractionForceGeneration : Prop
  integrinBindingClosed : integrinBinding
  focalAdhesionAssemblyClosed : focalAdhesionAssembly
  tractionForceGenerationClosed : tractionForceGeneration

structure CellAdhesionEvidence (A : CellAdhesionPackage) where
  integrinBindingClosed : A.integrinBinding
  focalAdhesionAssemblyClosed : A.focalAdhesionAssembly
  tractionForceGenerationClosed : A.tractionForceGeneration

def CellAdhesionClosed (A : CellAdhesionPackage) : Prop :=
  A.integrinBinding ∧ A.focalAdhesionAssembly ∧ A.tractionForceGeneration

theorem cell_adhesion_closed_from_evidence (A : CellAdhesionPackage) (E : CellAdhesionEvidence A) :
    CellAdhesionClosed A := by
  exact And.intro E.integrinBindingClosed (And.intro E.focalAdhesionAssemblyClosed E.tractionForceGenerationClosed)

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse