import HautevilleHouse.EcologyNicheTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∀ s e, A.object.fundamentalNiche s e → A.object.realizedNiche s e

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  intro s e h
  exact A.object.nicheConservation s e h

end EcologyNicheTheoryCanonicalLaneLean
end HautevilleHouse