import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure NicheBreadthPackage where
  environmentalGradient : Type
  speciesRange : Set environmentalGradient
  breadthMeasure : Type
  resourceSpectrum : Prop
  competitionCoefficient : Prop
  breadthMeasureDefined : breadthMeasure
  resourceSpectrumClosed : resourceSpectrum
  competitionCoefficientClosed : competitionCoefficient

structure NicheBreadthEvidence (N : NicheBreadthPackage) where
  resourceSpectrumClosed : N.resourceSpectrum
  competitionCoefficientClosed : N.competitionCoefficient

def NicheBreadthClosed (N : NicheBreadthPackage) : Prop :=
  N.resourceSpectrum ∧ N.competitionCoefficient

theorem niche_breadth_closed_from_evidence (N : NicheBreadthPackage)
    (E : NicheBreadthEvidence N) : NicheBreadthClosed N := by
  exact And.intro E.resourceSpectrumClosed E.competitionCoefficientClosed

end HautevilleHouse
end EcologyNicheTheoryCanonicalLaneLean