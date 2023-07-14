Extension: CPGImpressionFor
Id: cpg-impressionFor
Title: "CPG Impression For"
Description: "Specifies a case (episode of care) which this clinical impression is for."
* insert ExtensionMetadata(cpg-impressionFor, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "ClinicalImpression"
* . 0..*
  * ^short = "Which case"
  * ^definition = "Specifies a case (episode of care) which this clinical impression is for."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-impressionFor" (exactly)
// * value[x] only Reference($cpg-case)