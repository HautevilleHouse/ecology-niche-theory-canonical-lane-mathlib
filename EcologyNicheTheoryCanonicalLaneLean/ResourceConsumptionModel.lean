import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure ResourceConsumptionPackage where
  resourceType : Type
  consumerSpecies : Type
  consumptionRate : consumerSpecies -> resourceType -> Float
  resourceGrowth : resourceType -> Float
  consumerMortality : consumerSpecies -> Float
  efficiency : consumerSpecies -> Float
  coexistenceCondition : Prop
  invasionAnalysisDone : Prop

structure ResourceConsumptionEvidence (P : ResourceConsumptionPackage) where
  coexistenceConditionClosed : P.coexistenceCondition
  invasionAnalysisDoneClosed : P.invasionAnalysisDone

def ResourceConsumptionClosed (P : ResourceConsumptionPackage) : Prop :=
  P.coexistenceCondition ∧ P.invasionAnalysisDone

theorem resource_consumption_closed_from_evidence (P : ResourceConsumptionPackage) 
    (E : ResourceConsumptionEvidence P) : ResourceConsumptionClosed P := by
  exact And.intro E.coexistenceConditionClosed E.invasionAnalysisDoneClosed

end EcologyNicheTheoryCanonicalLaneLean
end HautevilleHouse