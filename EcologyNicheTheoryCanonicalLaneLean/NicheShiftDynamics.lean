import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure NicheShiftDynamicsPackage where
  species : Type
  timeDomain : Type
  nicheCenter : species -> timeDomain -> Float
  nicheWidth : species -> timeDomain -> Float
  shiftRate : species -> Float
  selectionPressure : species -> Float
  evolutionaryTrajectoryComputed : Prop
  shiftConstrained : Prop

structure NicheShiftDynamicsEvidence (P : NicheShiftDynamicsPackage) where
  evolutionaryTrajectoryComputedClosed : P.evolutionaryTrajectoryComputed
  shiftConstrainedClosed : P.shiftConstrained

def NicheShiftDynamicsClosed (P : NicheShiftDynamicsPackage) : Prop :=
  P.evolutionaryTrajectoryComputed ∧ P.shiftConstrained

theorem niche_shift_dynamics_closed_from_evidence (P : NicheShiftDynamicsPackage) 
    (E : NicheShiftDynamicsEvidence P) : NicheShiftDynamicsClosed P := by
  exact And.intro E.evolutionaryTrajectoryComputedClosed E.shiftConstrainedClosed

end EcologyNicheTheoryCanonicalLaneLean
end HautevilleHouse