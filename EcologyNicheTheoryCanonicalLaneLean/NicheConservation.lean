import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyNicheTheoryCanonicalLaneLean.NichePartitioning

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure NicheConservationPackage {F : FundamentalNichePackage}
    {R : RealizedNichePackage F} {C : CompetitiveExclusionPackage R}
    (P : NichePartitioningPackage C) where
  phylogeneticSignal : Prop
  nicheStability : Prop
  evolutionaryConstraint : Prop
  phylogeneticSignalClosed : phylogeneticSignal
  nicheStabilityClosed : nicheStability
  evolutionaryConstraintClosed : evolutionaryConstraint

structure NicheConservationEvidence {F : FundamentalNichePackage}
    {R : RealizedNichePackage F} {C : CompetitiveExclusionPackage R}
    {P : NichePartitioningPackage C} (N : NicheConservationPackage P) where
  phylogeneticSignalClosed : N.phylogeneticSignal
  nicheStabilityClosed : N.nicheStability
  evolutionaryConstraintClosed : N.evolutionaryConstraint

def NicheConservationClosed {F : FundamentalNichePackage}
    {R : RealizedNichePackage F} {C : CompetitiveExclusionPackage R}
    {P : NichePartitioningPackage C} (N : NicheConservationPackage P) : Prop :=
  N.phylogeneticSignal ∧ N.nicheStability ∧ N.evolutionaryConstraint

theorem niche_conservation_closed_from_evidence
    {F : FundamentalNichePackage} {R : RealizedNichePackage F}
    {C : CompetitiveExclusionPackage R} {P : NichePartitioningPackage C}
    (N : NicheConservationPackage P) (E : NicheConservationEvidence N) :
    NicheConservationClosed N := by
  exact And.intro E.phylogeneticSignalClosed
    (And.intro E.nicheStabilityClosed E.evolutionaryConstraintClosed)

end HautevilleHouse
end EcologyNicheTheoryCanonicalLaneLean