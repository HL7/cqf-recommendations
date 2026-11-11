Extension: CPGPertinent
Id: cpg-pertinent
Title: "CPG Pertinent Extension"
Description: "References the pertinent positive or negative information supporting a recommendation or a higher-level clinical finding. The inverse relationship is described by the cpg-pertinentTo extension. The cpg-caseFeaturePertinence and cpg-pertinenceRating extensions may be used on the reference to describe the direction and weight of the pertinence relationship."
* insert StructureDefinitionMetadata(cpg-pertinent)
* insert ExtensionContext(Resource)
* . ^comment = "This will typically be the most relevant case features used in determining applicability, but could also be other patient-specific information relevant to interpreting or assessing appropriateness of the recommendation with respect to the patient."
* value[x] only Reference