Extension: CPGCaseFeaturePertinence
Id: cpg-caseFeaturePertinence
Title: "CPG Case Feature Pertinence"
Description: "Describes the pertinence of the case feature."
* insert DefinitionMetadata(cpg-caseFeaturePertinence, StructureDefinition)
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..1
  * ^short = "weakly-positive | weakly-negative | strongly-positive | strongly-negative | pathognomonic"
  * ^definition = "Describes the pertinence of the case feature."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-caseFeaturePertinence" (exactly)
* value[x] only code
* value[x] from $cpg-casefeature-pertinence-valueset (required)
  * ^binding.description = "Describes the pertinence of a case feature"