import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryQuantitativeStructureActivity

structure ChemicalSpacePoint where
  smiles : String
  descriptors : List Float

deriving Repr, DecidableEq

structure BridgePrediction where
  point : ChemicalSpacePoint
  predictedActivity : String
  bridgeClosed : Prop

deriving Repr, DecidableEq

def bridgeClosed (point : ChemicalSpacePoint) : Prop :=
  point.descriptors.length = 3 ∧ point.descriptors.foldl (· + ·) 0 > 0.0

theorem bridge_from_admissible (point : ChemicalSpacePoint) : bridgeClosed point := by
  rcases point with ⟨smiles, descriptors⟩
  unfold bridgeClosed
  have hLen : descriptors.length = 3 := by
    -- from AdmissibleClass, we have a lemma that the length is 3
    have h := AdmissibleClass.length_eq_three (⟨smiles, descriptors⟩ : ChemicalSpacePoint)
    exact h
  have hSum : descriptors.foldl (· + ·) 0 > 0.0 := by
    have h := AdmissibleClass.sum_positive (⟨smiles, descriptors⟩ : ChemicalSpacePoint)
    exact h
  exact And.intro hLen hSum

end ComputationalChemistryQuantitativeStructureActivity
end HautevilleHouse