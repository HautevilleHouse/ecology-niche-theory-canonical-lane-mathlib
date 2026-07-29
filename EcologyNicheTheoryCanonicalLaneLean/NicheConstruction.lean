import EcologyNicheTheoryCanonicalLaneLean.CompetitiveExclusion

/-!
# Niche Construction Package
-/

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure NicheConstructionPackage {F : FundamentalNichePackage} {C : CompetitiveExclusionPackage F} (C : CompetitiveExclusionPackage F) where
  ecosystemEngineering : Prop
  feedbackLoop : Prop
  nicheModification : Prop
  constructionEquilibrium : Prop

structure NicheConstructionEvidence {F : FundamentalNichePackage} {C : CompetitiveExclusionPackage F} (N : NicheConstructionPackage C) where
  ecosystemEngineeringClosed : N.ecosystemEngineering
  feedbackLoopClosed : N.feedbackLoop
  nicheModificationClosed : N.nicheModification
  constructionEquilibriumClosed : N.constructionEquilibrium

def NicheConstructionClosed {F : FundamentalNichePackage} {C : CompetitiveExclusionPackage F} (N : NicheConstructionPackage C) : Prop :=
  N.ecosystemEngineering ∧ N.feedbackLoop ∧ N.nicheModification ∧ N.constructionEquilibrium

theorem niche_construction_closed_from_evidence {F : FundamentalNichePackage} {C : CompetitiveExclusionPackage F} (N : NicheConstructionPackage C) (E : NicheConstructionEvidence N) :
    NicheConstructionClosed N := by
  exact And.intro E.ecosystemEngineeringClosed
    (And.intro E.feedbackLoopClosed
      (And.intro E.nicheModificationClosed E.constructionEquilibriumClosed))

end EcologyNicheTheoryCanonicalLaneLean
end HautevilleHouse