import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryQuantitativeStructureActivity

def activityPredictionBridge (model : QuantitativeStructureActivityModel) : Prop :=
  closedDescriptorSet model ∧ gateClosed model

theorem bridge_closure (model : QuantitativeStructureActivityModel) : activityPredictionBridge model := by
  unfold activityPredictionBridge
  constructor
  · exact closedDescriptorSet_all model
  · exact gateClosed_all model

end ComputationalChemistryQuantitativeStructureActivity
end HautevilleHouse