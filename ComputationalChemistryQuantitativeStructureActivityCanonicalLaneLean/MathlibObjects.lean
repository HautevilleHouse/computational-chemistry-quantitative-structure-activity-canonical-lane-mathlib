import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Vector
import Mathlib.Data.Finset.Basic

namespace HautevilleHouse
namespace ComputationalChemistryQuantitativeStructureActivityCanonicalLaneLean

abbrev MolecularDescriptor := Vector Float 200
abbrev Activity := Float

structure QsarDataset where
  descriptors : List MolecularDescriptor
  activities : List Activity
  size : Nat

structure QsarModel where
  predict : MolecularDescriptor → Activity
  trainingError : Float

structure QsarAdmittedObject where
  dataset : QsarDataset
  projectedLanguage : Set MolecularDescriptor
  solver : DecisionProcedure

structure DecisionProcedure where
  evaluate : MolecularDescriptor → Activity

end ComputationalChemistryQuantitativeStructureActivityCanonicalLaneLean
end HautevilleHouse