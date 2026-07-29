import HautevilleHouse.EcologyNicheTheoryCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

def ConstrainedNicheClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_niche_endgame (A : AdmissibleClass) :
    ConstrainedNicheClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EcologyNicheTheoryCanonicalLaneLean
end HautevilleHouse