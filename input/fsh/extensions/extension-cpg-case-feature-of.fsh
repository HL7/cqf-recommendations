Extension: CPGCaseFeatureOf
Id: cpg-caseFeatureOf
Title: "CPG Case Feature Of"
Description: "Defines which guideline elements this case feature definition is a feature of."
* insert DefinitionMetadata(cpg-caseFeatureOf, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..*
  * ^short = "Which guideline components this is a feature of"
  * ^definition = "Defines which guideline elements this case feature definition is a feature of."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-caseFeatureOf" (exactly)
* value[x] only canonical