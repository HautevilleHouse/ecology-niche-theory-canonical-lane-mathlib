import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure MetapopulationDynamicsPackage where
  patchNetwork : Type u
  colonizationRate : ℝ
  extinctionRate : ℝ
  occupancyDynamics : Prop
  equilibriumOccupancy : Prop
  persistenceCondition : Prop

structure MetapopulationDynamicsEvidence 
    (M : MetapopulationDynamicsPackage) where
  occupancyDynamicsClosed : M.occupancyDynamics
  equilibriumOccupancyClosed : M.equilibriumOccupancy
  persistenceConditionClosed : M.persistenceCondition

def MetapopulationDynamicsClosed (M : MetapopulationDynamicsPackage) : Prop :=
  M.occupancyDynamics ∧ M.equilibriumOccupancy ∧ M.persistenceCondition

theorem metapopulation_dynamics_closed_from_evidence
    (M : MetapopulationDynamicsPackage)
    (E : MetapopulationDynamicsEvidence M) :
    MetapopulationDynamicsClosed M := by
  exact And.intro E.occupancyDynamicsClosed
    (And.intro E.equilibriumOccupancyClosed E.persistenceConditionClosed)

end EcologyNicheTheoryCanonicalLaneLean
end HautevilleHouse