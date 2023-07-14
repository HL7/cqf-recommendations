Extension: CPGCaseFeatureType
Id: cpg-caseFeatureType
Title: "CPG Case Feature Type"
Description: "Describes whether the case feature is asserted or inferred."
* insert DefinitionMetadata(cpg-caseFeatureType, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..1
  * ^short = "asserted | inferred"
  * ^definition = "Describes whether the case feature is asserted or inferred."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-caseFeatureType" (exactly)
* value[x] only code
* value[x] from $cpg-casefeature-type-valueset (required)
  * ^binding.description = "Whether the case feature is asserted or inferred"