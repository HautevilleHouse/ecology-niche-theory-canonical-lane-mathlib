import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure CompetitionColonizationTradeoffPackage where
  colonizationRate : ℝ
  competitionAbility : ℝ
  coexistenceRegion : Prop
  tradeoffConstraint : Prop
  colonizationPositive : Prop
  competitionPositive : Prop

structure CompetitionColonizationTradeoffEvidence 
    (T : CompetitionColonizationTradeoffPackage) where
  coexistenceRegionClosed : T.coexistenceRegion
  tradeoffConstraintClosed : T.tradeoffConstraint
  colonizationPositiveClosed : T.colonizationPositive
  competitionPositiveClosed : T.competitionPositive

def CompetitionColonizationTradeoffClosed 
    (T : CompetitionColonizationTradeoffPackage) : Prop :=
  T.coexistenceRegion ∧ T.tradeoffConstraint ∧
  T.colonizationPositive ∧ T.competitionPositive

theorem competition_colonization_tradeoff_closed_from_evidence
    (T : CompetitionColonizationTradeoffPackage)
    (E : CompetitionColonizationTradeoffEvidence T) :
    CompetitionColonizationTradeoffClosed T := by
  exact And.intro E.coexistenceRegionClosed
    (And.intro E.tradeoffConstraintClosed
      (And.intro E.colonizationPositiveClosed E.competitionPositiveClosed))

end EcologyNicheTheoryCanonicalLaneLean
end HautevilleHouse