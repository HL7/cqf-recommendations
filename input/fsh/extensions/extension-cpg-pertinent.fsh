Extension: CPGPertinent
Id: cpg-pertinent
Title: "CPG Pertinent"
Description: "The pertinent positive or negative information relevant to the recommendation."
* insert DefinitionMetadata(cpg-pertinent, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..*
  * ^short = "Pertinent information"
  * ^definition = "The pertinent positive or negative information relevant to the recommendation."
  * ^comment = "This will typically be the most relevant case features used in determining applicability, but could also be other patient-specific information relevant to interpreting or assessing appropriateness of the recommendation with respect to the patient."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-pertinent" (exactly)
* value[x] only Reference