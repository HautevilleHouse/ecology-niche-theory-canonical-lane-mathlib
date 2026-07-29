import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure FundamentalNichePackage where
  organism : Type
  abioticFactors : Set (Organism → ℝ)
  toleranceRange : Prop
  physiologicalLimit : Prop
  toleranceRangeClosed : toleranceRange
  physiologicalLimitClosed : physiologicalLimit

structure FundamentalNicheEvidence (F : FundamentalNichePackage) where
  toleranceRangeClosed : F.toleranceRange
  physiologicalLimitClosed : F.physiologicalLimit

def FundamentalNicheClosed (F : FundamentalNichePackage) : Prop :=
  F.toleranceRange ∧ F.physiologicalLimit

theorem fundamental_niche_closed_from_evidence (F : FundamentalNichePackage)
    (E : FundamentalNicheEvidence F) : FundamentalNicheClosed F := by
  exact And.intro E.toleranceRangeClosed E.physiologicalLimitClosed

end HautevilleHouse
end EcologyNicheTheoryCanonicalLaneLean