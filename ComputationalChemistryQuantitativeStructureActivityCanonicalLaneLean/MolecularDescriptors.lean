import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryQuantitativeStructureActivity

structure MolecularDescriptor where
  name : String
  value : Float
  unit : String

deriving Repr, DecidableEq

structure ActivityEndpoint where
  endpointName : String
  activityClass : String
  confidence : Float

deriving Repr, DecidableEq

structure QuantitativeStructureActivityModel where
  descriptors : List MolecularDescriptor
  activity : ActivityEndpoint
  canonicalLaneId : String

deriving Repr, DecidableEq

def closedDescriptorSet (model : QuantitativeStructureActivityModel) : Prop :=
  model.descriptors.length ≥ 1 ∧ model.activity.confidence > 0.0

theorem descriptor_set_nonempty (model : QuantitativeStructureActivityModel) : closedDescriptorSet model := by
  unfold closedDescriptorSet
  constructor
  · exact Nat.one_le_length.mpr (by
      have h : model.descriptors ≠ [] := by
        intro hnil
        have hlen : model.descriptors.length = 0 := by simpa [hnil] using rfl
        exact Nat.not_lt.mpr hlen (by decide)
      exact h)
  · have hpos : model.activity.confidence > 0.0 := by
      have : model.activity.confidence > 0.0 := by
        decide
      exact this
    exact hpos

end ComputationalChemistryQuantitativeStructureActivity
end HautevilleHouse