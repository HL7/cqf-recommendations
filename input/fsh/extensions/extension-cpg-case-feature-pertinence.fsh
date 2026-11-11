Extension: CPGCaseFeaturePertinence
Id: cpg-caseFeaturePertinence
Title: "CPG Case Feature Pertinence Extension"
Description: "Describes the pertinence of the case feature: the direction of its relevance (positive, negative, or pathognomonic) for establishing a higher-level clinical finding. The cpg-pertinenceRating extension may be used alongside it to establish the weight of the pertinence relationship. May also be used on a Reference (such as the value of cpg-pertinent or cpg-pertinentTo) to describe the pertinence of that relationship."
* insert StructureDefinitionMetadata(cpg-caseFeaturePertinence)
* insert ExtensionContext(Resource)
* insert ExtensionContext(Reference)
* value[x] only code
* valueCode from $cpg-casefeature-pertinence-valueset (required)
  * ^binding.description = "Describes the pertinence of a case feature"