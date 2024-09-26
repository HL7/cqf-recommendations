Extension: CPGRationale
Id: cpg-rationale
Title: "CPG Rationale Extension"
Description: "A clinician-friendly explanation for the recommendation; patient-friendly if the recommendation is patient-facing."
* insert StructureDefinitionMetadata(cpg-rationale)
* insert ExtensionContext(Resource)
* insert ExtensionContext(PlanDefinition.action)
* value[x] only markdown