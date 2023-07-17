Extension: CPGPertinent
Id: cpg-pertinent
Title: "CPG Pertinent Extension"
Description: "The pertinent positive or negative information relevant to the recommendation."
* insert DefinitionMetadata(cpg-pertinent, StructureDefinition)
* .
  * ^comment = "This will typically be the most relevant case features used in determining applicability, but could also be other patient-specific information relevant to interpreting or assessing appropriateness of the recommendation with respect to the patient."
* value[x] only Reference