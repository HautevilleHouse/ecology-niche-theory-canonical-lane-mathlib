import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure SpeciesDistributionModelingPackage where
  environmentalLayers : Type u
  occurrenceData : Type v
  nicheModel : Type w
  modelFit : Prop
  predictionAccuracy : Prop
  nicheConservation : Prop

structure SpeciesDistributionModelingEvidence 
    (S : SpeciesDistributionModelingPackage) where
  modelFitClosed : S.modelFit
  predictionAccuracyClosed : S.predictionAccuracy
  nicheConservationClosed : S.nicheConservation

def SpeciesDistributionModelingClosed 
    (S : SpeciesDistributionModelingPackage) : Prop :=
  S.modelFit ∧ S.predictionAccuracy ∧ S.nicheConservation

theorem species_distribution_modeling_closed_from_evidence
    (S : SpeciesDistributionModelingPackage)
    (E : SpeciesDistributionModelingEvidence S) :
    SpeciesDistributionModelingClosed S := by
  exact And.intro E.modelFitClosed
    (And.intro E.predictionAccuracyClosed E.nicheConservationClosed)

end EcologyNicheTheoryCanonicalLaneLean
end HautevilleHouse