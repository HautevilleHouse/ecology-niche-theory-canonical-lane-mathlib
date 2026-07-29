import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure NicheAdmittedObject where
  species : Type
  environment : Type
  fundamentalNiche : species → environment → Prop
  realizedNiche : species → environment → Prop
  nicheConservation : ∀ s e, fundamentalNiche s e → realizedNiche s e

structure AdmissibleClass where
  object : NicheAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (∀ s e, A.object.fundamentalNiche s e → A.object.realizedNiche s e) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EcologyNicheTheoryCanonicalLaneLean
end HautevilleHouse