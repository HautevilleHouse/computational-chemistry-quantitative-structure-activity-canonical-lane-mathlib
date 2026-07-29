import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryQuantitativeStructureActivity

def gateClosed (model : QuantitativeStructureActivityModel) : Prop :=
  model.activity.confidence ≥ 0.95 ∨ model.activity.confidence < 0.05

theorem gate_from_admissible (model : QuantitativeStructureActivityModel) : gateClosed model := by
  sorry

end ComputationalChemistryQuantitativeStructureActivity
end HautevilleHouse
