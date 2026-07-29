import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EcologyNicheTheoryCanonicalLaneLean.FundamentalNiche

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure RealizedNichePackage (F : FundamentalNichePackage) where
  bioticInteractions : Set (F.organism → F.organism → ℝ)
  competitionEffect : Prop
  predationEffect : Prop
  realizedNicheSpace : Prop
  competitionEffectClosed : competitionEffect
  predationEffectClosed : predationEffect
  realizedNicheSpaceClosed : realizedNicheSpace

structure RealizedNicheEvidence {F : FundamentalNichePackage}
    (R : RealizedNichePackage F) where
  competitionEffectClosed : R.competitionEffect
  predationEffectClosed : R.predationEffect
  realizedNicheSpaceClosed : R.realizedNicheSpace

def RealizedNicheClosed {F : FundamentalNichePackage}
    (R : RealizedNichePackage F) : Prop :=
  R.competitionEffect ∧ R.predationEffect ∧ R.realizedNicheSpace

theorem realized_niche_closed_from_evidence {F : FundamentalNichePackage}
    (R : RealizedNichePackage F) (E : RealizedNicheEvidence R) :
    RealizedNicheClosed R := by
  exact And.intro E.competitionEffectClosed
    (And.intro E.predationEffectClosed E.realizedNicheSpaceClosed)

end HautevilleHouse
end EcologyNicheTheoryCanonicalLaneLean