import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalChemistryQuantitativeStructureActivityCanonicalLaneLean

structure QSARTheoremStatement where
  sourceKey : String
  theoremName : String
  modelValidation : Prop
  predictionBound : Prop
  carriedRemainder : String

def sourceTheoremStatement : QSARTheoremStatement :=
  { sourceKey := "Computational Chemistry QSAR Canonical Lane",
    theoremName := "QSAR Admissible Closure",
    modelValidation := ∀ (A : AdmissibleClass), ConstrainedQSARClosure A,
    predictionBound := True,
    carriedRemainder := "Remaining descriptors not validated."
  }

theorem theorem_statement_holds : sourceTheoremStatement.modelValidation := by
  intro A
  exact constrained_qsar_endgame A

end ComputationalChemistryQuantitativeStructureActivityCanonicalLaneLean
end HautevilleHouse