Extension: CPGInferenceExpression
Id: cpg-inferenceExpression
Title: "CPG Inference Expression"
Description: "Defines formal computational semantics for calculating the case feature if it is not asserted."
* insert DefinitionMetadata(cpg-inferenceExpression, StructureDefinition)
* ^context.type = #element
* ^context.expression = "StructureDefinition"
* . 0..1
  * ^short = "How to calculate the feature"
  * ^definition = "Defines formal computational semantics for calculating the case feature if it is not asserted."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-inferenceExpression" (exactly)
* value[x] only Expression