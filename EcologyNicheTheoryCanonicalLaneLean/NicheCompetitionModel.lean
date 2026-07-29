import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure NicheCompetitionPackage where
  resourceTypes : Nat
  speciesPopulation : Nat -> Type
  competitionCoefficient : Matrix (Fin speciesPopulation) (Fin speciesPopulation) Float
  carryingCapacity : Vector Float speciesPopulation
  growthRate : Vector Float speciesPopulation
  equilibriaComputed : Prop
  stabilityAnalyzed : Prop

structure NicheCompetitionEvidence (P : NicheCompetitionPackage) where
  equilibriaComputedClosed : P.equilibriaComputed
  stabilityAnalyzedClosed : P.stabilityAnalyzed

def NicheCompetitionClosed (P : NicheCompetitionPackage) : Prop := 
  P.equilibriaComputed ∧ P.stabilityAnalyzed

theorem niche_competition_closed_from_evidence (P : NicheCompetitionPackage) 
    (E : NicheCompetitionEvidence P) : NicheCompetitionClosed P := by
  exact And.intro E.equilibriaComputedClosed E.stabilityAnalyzedClosed

end EcologyNicheTheoryCanonicalLaneLean
end HautevilleHouse