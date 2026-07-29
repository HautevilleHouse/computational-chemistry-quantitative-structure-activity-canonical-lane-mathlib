import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryQuantitativeStructureActivity

structure AdmissibleClass where
  lane : QuantitativeStructureActivityModel
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

deriving Repr, DecidableEq

def admittedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A.lane ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalChemistryQuantitativeStructureActivity
end HautevilleHouse
