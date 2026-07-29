import ComputationalChemistryQuantitativeStructureActivityCanonicalLaneLean.AdmissibleClass
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryQuantitativeStructureActivityCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure QsarEndgameState where
  admittedObject : QsarAdmittedObject

def qsarProjection : Projection QsarEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem qsar_projection_idempotent (x : QsarEndgameState) :
    qsarProjection.toFun (qsarProjection.toFun x) = qsarProjection.toFun x := by
  exact qsarProjection.idempotent x

end ComputationalChemistryQuantitativeStructureActivityCanonicalLaneLean
end HautevilleHouse