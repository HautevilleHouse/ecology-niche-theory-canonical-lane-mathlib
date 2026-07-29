import EcologyNicheTheoryCanonicalLaneLean.TheoremStatement
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EcologyNicheTheoryCanonicalLaneLean

structure EcologicalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SpeciesAdmittedObject where
  space : EcologicalSpace
  environmentGradient : Prop
  competitionMatrix : Prop
  coexistenceCondition : Prop
  speciesModel : Type
  speciesTopology : TopologicalSpace speciesModel
  stableEquilibrium : Prop
  conclusion : stableEquilibrium

structure NicheEndgameState where
  object : SpeciesAdmittedObject

def NicheWitnessClosed (O : SpeciesAdmittedObject) : Prop :=
  O.stableEquilibrium

end EcologyNicheTheoryCanonicalLaneLean
end HautevilleHouse