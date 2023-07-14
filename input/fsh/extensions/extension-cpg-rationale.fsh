Extension: CPGRationale
Id: cpg-rationale
Title: "CPG Rationale"
Description: "A clinician-friendly explanation for the recommendation; patient-friendly if the recommendation is patient-facing."
* insert DefinitionMetadata(cpg-rationale, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..*
  * ^short = "Explanation"
  * ^definition = "A clinician-friendly explanation for the recommendation; patient-friendly if the recommendation is patient-facing."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-rationale" (exactly)
* value[x] only markdown