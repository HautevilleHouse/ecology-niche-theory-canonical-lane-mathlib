import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure NicheBreadthPackage where
  environmentalGradient : Type u
  resourceCurve : environmentalGradient → ℝ
  physiologicalTolerance : environmentalGradient → ℝ
  breadthComputed : Prop
  breadthPositive : Prop
  breadthBounded : Prop

structure NicheBreadthEvidence (N : NicheBreadthPackage) where
  breadthComputedClosed : N.breadthComputed
  breadthPositiveClosed : N.breadthPositive
  breadthBoundedClosed : N.breadthBounded

def NicheBreadthClosed (N : NicheBreadthPackage) : Prop :=
  N.breadthComputed ∧ N.breadthPositive ∧ N.breadthBounded

theorem niche_breadth_closed_from_evidence (N : NicheBreadthPackage) 
    (E : NicheBreadthEvidence N) : NicheBreadthClosed N := by
  exact And.intro E.breadthComputedClosed
    (And.intro E.breadthPositiveClosed E.breadthBoundedClosed)

end EcologyNicheTheoryCanonicalLaneLean
end HautevilleHouse