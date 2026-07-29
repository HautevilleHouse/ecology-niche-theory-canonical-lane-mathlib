import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure ResourceCompetitionPackage where
  resourceType : Type u
  speciesCount : ℕ
  resourceConsumption : ℝ
  growthRate : ℝ
  coexistenceCondition : Prop
  competitionExclusion : Prop

structure ResourceCompetitionEvidence 
    (R : ResourceCompetitionPackage) where
  coexistenceConditionClosed : R.coexistenceCondition
  competitionExclusionClosed : R.competitionExclusion

def ResourceCompetitionClosed (R : ResourceCompetitionPackage) : Prop :=
  R.coexistenceCondition ∧ R.competitionExclusion

theorem resource_competition_closed_from_evidence
    (R : ResourceCompetitionPackage)
    (E : ResourceCompetitionEvidence R) :
    ResourceCompetitionClosed R := by
  exact And.intro E.coexistenceConditionClosed E.competitionExclusionClosed

end EcologyNicheTheoryCanonicalLaneLean
end HautevilleHouse