import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryQuantitativeStructureActivity

def ConstrainedQSARClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed (AdmissibleClass.lane A) ∧ gateClosed (AdmissibleClass.lane A)

theorem constrained_qsar_endgame (A : AdmissibleClass) : ConstrainedQSARClosure A := by
  exact And.intro (bridge_from_admissible (AdmissibleClass.lane A)) (gate_from_admissible (AdmissibleClass.lane A))

end ComputationalChemistryQuantitativeStructureActivity
end HautevilleHouse
