import canonicalLaneMathlib.AdmissibleClass
import ExtracellularMatrixInteractions

/-! 
# Cytoskeleton Remodeling Package
-/

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure CytoskeletonRemodelingPackage {C : CellAdhesionMoleculesPackage}
    {S : MigrationSignalingPathwaysPackage C} {A : CellMigrationAssayPackage C S}
    {E : ExtracellularMatrixInteractionsPackage C S A} where
  actinPolymerization : Prop
  microtubuleDynamics : Prop
  contractility : Prop
  adhesionTurnover : Prop
  nuclearDeformation : Prop
  actinPolymerizationClosed : actinPolymerization
  microtubuleDynamicsClosed : microtubuleDynamics
  contractilityClosed : contractility
  adhesionTurnoverClosed : adhesionTurnover
  nuclearDeformationClosed : nuclearDeformation

structure CytoskeletonRemodelingEvidence {C : CellAdhesionMoleculesPackage}
    {S : MigrationSignalingPathwaysPackage C} {A : CellMigrationAssayPackage C S}
    {E : ExtracellularMatrixInteractionsPackage C S A}
    (R : CytoskeletonRemodelingPackage C S A E) where
  actinPolymerizationClosed : R.actinPolymerization
  microtubuleDynamicsClosed : R.microtubuleDynamics
  contractilityClosed : R.contractility
  adhesionTurnoverClosed : R.adhesionTurnover
  nuclearDeformationClosed : R.nuclearDeformation

def CytoskeletonRemodelingClosed {C : CellAdhesionMoleculesPackage}
    {S : MigrationSignalingPathwaysPackage C} {A : CellMigrationAssayPackage C S}
    {E : ExtracellularMatrixInteractionsPackage C S A}
    (R : CytoskeletonRemodelingPackage C S A E) : Prop :=
  R.actinPolymerization ∧ R.microtubuleDynamics ∧ R.contractility ∧ R.adhesionTurnover ∧ R.nuclearDeformation

theorem cytoskeleton_remodeling_closed_from_evidence {C : CellAdhesionMoleculesPackage}
    {S : MigrationSignalingPathwaysPackage C} {A : CellMigrationAssayPackage C S}
    {E : ExtracellularMatrixInteractionsPackage C S A}
    (R : CytoskeletonRemodelingPackage C S A E) (Ev : CytoskeletonRemodelingEvidence R) :
    CytoskeletonRemodelingClosed R := by
  exact And.intro Ev.actinPolymerizationClosed (And.intro Ev.microtubuleDynamicsClosed
    (And.intro Ev.contractilityClosed (And.intro Ev.adhesionTurnoverClosed Ev.nuclearDeformationClosed)))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse