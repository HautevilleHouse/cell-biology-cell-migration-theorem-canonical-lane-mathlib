import HautevilleHouse.CellBiologyCellMigrationTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMigrationTheoremCanonicalLaneLean

structure MigrationDynamicsPackage where
  cellEquation : Prop
  chemotaxisTerm : Prop
  adhesionTerm : Prop
  frictionTerm : Prop
  boundaryCondition : Prop

structure MigrationDynamicsEvidence (P : MigrationDynamicsPackage) where
  cellEquationClosed : P.cellEquation
  chemotaxisTermClosed : P.chemotaxisTerm
  adhesionTermClosed : P.adhesionTerm
  frictionTermClosed : P.frictionTerm
  boundaryConditionClosed : P.boundaryCondition

def MigrationDynamicsClosed (P : MigrationDynamicsPackage) : Prop :=
  P.cellEquation ∧ P.chemotaxisTerm ∧ P.adhesionTerm ∧ P.frictionTerm ∧ P.boundaryCondition

theorem migration_dynamics_closed_from_evidence (P : MigrationDynamicsPackage)
    (E : MigrationDynamicsEvidence P) : MigrationDynamicsClosed P := by
  exact And.intro E.cellEquationClosed
    (And.intro E.chemotaxisTermClosed
      (And.intro E.adhesionTermClosed
        (And.intro E.frictionTermClosed E.boundaryConditionClosed)))

end CellBiologyCellMigrationTheoremCanonicalLaneLean
end HautevilleHouse