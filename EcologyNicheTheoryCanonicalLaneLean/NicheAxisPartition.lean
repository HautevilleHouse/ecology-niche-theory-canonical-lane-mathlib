import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure NicheAxisPartitionPackage where
  environmentalGradient : Type
  speciesResponseCurve : (environmentalGradient -> Float) -> Type
  nicheAxisCount : Nat
  nicheOverlapMatrix : Matrix (Fin nicheAxisCount) (Fin nicheAxisCount) Float
  separationCondition : Prop
  dimensionalityReduced : Prop

structure NicheAxisPartitionEvidence (P : NicheAxisPartitionPackage) where
  separationConditionClosed : P.separationCondition
  dimensionalityReducedClosed : P.dimensionalityReduced

def NicheAxisPartitionClosed (P : NicheAxisPartitionPackage) : Prop :=
  P.separationCondition ∧ P.dimensionalityReduced

theorem niche_axis_partition_closed_from_evidence (P : NicheAxisPartitionPackage) 
    (E : NicheAxisPartitionEvidence P) : NicheAxisPartitionClosed P := by
  exact And.intro E.separationConditionClosed E.dimensionalityReducedClosed

end EcologyNicheTheoryCanonicalLaneLean
end HautevilleHouse