import EcologyNicheTheoryCanonicalLaneLean.NicheConstruction

/-!
# Stabilizing Mechanisms Package
-/

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure StabilizingMechanismsPackage {F : FundamentalNichePackage} {C : CompetitiveExclusionPackage F} {N : NicheConstructionPackage C} (N : NicheConstructionPackage C) where
  coexistenceModes : Prop
  disturbanceRegime : Prop
  stochasticTradeoffs : Prop
  stabilizingMechanismClassified : Prop

structure StabilizingMechanismsEvidence {F : FundamentalNichePackage} {C : CompetitiveExclusionPackage F} {N : NicheConstructionPackage C} (S : StabilizingMechanismsPackage N) where
  coexistenceModesClosed : S.coexistenceModes
  disturbanceRegimeClosed : S.disturbanceRegime
  stochasticTradeoffsClosed : S.stochasticTradeoffs
  stabilizingMechanismClassifiedClosed : S.stabilizingMechanismClassified

def StabilizingMechanismsClosed {F : FundamentalNichePackage} {C : CompetitiveExclusionPackage F} {N : NicheConstructionPackage C} (S : StabilizingMechanismsPackage N) : Prop :=
  S.coexistenceModes ∧ S.disturbanceRegime ∧ S.stochasticTradeoffs ∧ S.stabilizingMechanismClassified

theorem stabilizing_mechanisms_closed_from_evidence {F : FundamentalNichePackage} {C : CompetitiveExclusionPackage F} {N : NicheConstructionPackage C} (S : StabilizingMechanismsPackage N) (E : StabilizingMechanismsEvidence S) :
    StabilizingMechanismsClosed S := by
  exact And.intro E.coexistenceModesClosed
    (And.intro E.disturbanceRegimeClosed
      (And.intro E.stochasticTradeoffsClosed E.stabilizingMechanismClassifiedClosed))

end EcologyNicheTheoryCanonicalLaneLean
end HautevilleHouse