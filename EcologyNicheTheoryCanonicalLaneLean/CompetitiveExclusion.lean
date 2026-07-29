import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyNicheTheoryCanonicalLaneLean.RealizedNiche

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure CompetitiveExclusionPackage {F : FundamentalNichePackage}
    (R : RealizedNichePackage F) where
  speciesPool : Set F.organism
  resourceLimitation : Prop
  overlapCondition : Prop
  exclusionConsequence : Prop
  resourceLimitationClosed : resourceLimitation
  overlapConditionClosed : overlapCondition
  exclusionConsequenceClosed : exclusionConsequence

structure CompetitiveExclusionEvidence {F : FundamentalNichePackage}
    {R : RealizedNichePackage F} (C : CompetitiveExclusionPackage R) where
  resourceLimitationClosed : C.resourceLimitation
  overlapConditionClosed : C.overlapCondition
  exclusionConsequenceClosed : C.exclusionConsequence

def CompetitiveExclusionClosed {F : FundamentalNichePackage}
    {R : RealizedNichePackage F} (C : CompetitiveExclusionPackage R) : Prop :=
  C.resourceLimitation ∧ C.overlapCondition ∧ C.exclusionConsequence

theorem competitive_exclusion_closed_from_evidence
    {F : FundamentalNichePackage} {R : RealizedNichePackage F}
    (C : CompetitiveExclusionPackage R) (E : CompetitiveExclusionEvidence C) :
    CompetitiveExclusionClosed C := by
  exact And.intro E.resourceLimitationClosed
    (And.intro E.overlapConditionClosed E.exclusionConsequenceClosed)

end HautevilleHouse
end EcologyNicheTheoryCanonicalLaneLean