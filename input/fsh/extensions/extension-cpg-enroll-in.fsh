Extension: CPGEnrollIn
Id: cpg-enrollIn
Title: "CPG Enroll In"
Description: "The URL of the PlanDefinition (Strategy or Pathway) in which the patient should be enrolled."
* insert ExtensionMetadata(cpg-enrollIn, StructureDefinition)
* ^date = "2018-06-06"
* ^context.type = #element
* ^context.expression = "ActivityDefinition"
* . 0..*
  * ^short = "Enroll In?"
  * ^definition = "The URL of the PlanDefinition (Strategy or Pathway) in which the patient should be enrolled."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-enrollIn" (exactly)
* value[x] only canonical
  * ^type.targetProfile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-shareableplandefinition"