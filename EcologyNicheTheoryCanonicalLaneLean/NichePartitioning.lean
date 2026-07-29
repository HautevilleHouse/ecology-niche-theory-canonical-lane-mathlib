import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyNicheTheoryCanonicalLaneLean.CompetitiveExclusion

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure NichePartitioningPackage {F : FundamentalNichePackage}
    {R : RealizedNichePackage F} (C : CompetitiveExclusionPackage R) where
  resourceAxis : F.organism → ℝ
  traitAxis : F.organism → ℝ
  partitioningEquilibrium : Prop
  characterDisplacement : Prop
  coexistenceMechanism : Prop
  partitioningEquilibriumClosed : partitioningEquilibrium
  characterDisplacementClosed : characterDisplacement
  coexistenceMechanismClosed : coexistenceMechanism

structure NichePartitioningEvidence {F : FundamentalNichePackage}
    {R : RealizedNichePackage F} {C : CompetitiveExclusionPackage R}
    (P : NichePartitioningPackage C) where
  partitioningEquilibriumClosed : P.partitioningEquilibrium
  characterDisplacementClosed : P.characterDisplacement
  coexistenceMechanismClosed : P.coexistenceMechanism

def NichePartitioningClosed {F : FundamentalNichePackage}
    {R : RealizedNichePackage F} {C : CompetitiveExclusionPackage R}
    (P : NichePartitioningPackage C) : Prop :=
  P.partitioningEquilibrium ∧ P.characterDisplacement ∧ P.coexistenceMechanism

theorem niche_partitioning_closed_from_evidence
    {F : FundamentalNichePackage} {R : RealizedNichePackage F}
    {C : CompetitiveExclusionPackage R} (P : NichePartitioningPackage C)
    (E : NichePartitioningEvidence P) : NichePartitioningClosed P := by
  exact And.intro E.partitioningEquilibriumClosed
    (And.intro E.characterDisplacementClosed E.coexistenceMechanismClosed)

end HautevilleHouse
end EcologyNicheTheoryCanonicalLaneLean