Extension: CPGPertinentTo
Id: cpg-pertinentTo
Title: "CPG Pertinent To Extension"
Description: "Identifies the higher-level clinical finding (the target of a pertinence relationship) to which this resource is pertinent. This is the inverse of the cpg-pertinent extension, which references the pertinent information supporting a finding. Both directions are defined because the information on either side of the relationship may be outside the control of the system describing it."
* insert StructureDefinitionMetadata(cpg-pertinentTo)
* insert ExtensionContext(Resource)
* . ^comment = "The cpg-caseFeaturePertinence and cpg-pertinenceRating extensions may be used on the reference to describe the direction and weight of the pertinence relationship."
* value[x] only Reference
