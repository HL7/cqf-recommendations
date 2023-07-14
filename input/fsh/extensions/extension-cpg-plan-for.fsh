Extension: CPGPlanFor
Id: cpg-planFor
Title: "CPG Plan For"
Description: "Specifies a case (episode of care) which this care plan is managing."
* insert DefinitionMetadata(cpg-planFor, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "CarePlan"
* . 0..*
  * ^short = "Which case"
  * ^definition = "Specifies a case (episode of care) which this care plan is managing."
  * ^comment = "The enrollment may be automatic, prompted, or manual."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-planFor" (exactly)
// * value[x] only Reference($cpg-case)