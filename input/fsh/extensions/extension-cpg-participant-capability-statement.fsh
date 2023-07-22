Extension: CPGParticipantCapabilityStatement
Id: cpg-participantCapabilityStatement
Title: "CPG Participant Capability Statement Extension"
Description: "A CapabilityStatement that specifies what capabilities a device must have in order to participant in this action of a PlanDefinition."
* insert StructureDefinitionMetadata(cpg-participantCapabilityStatement)
* insert ExtensionContext(PlanDefinition.action.participant)
* . 0..1
* value[x] only Canonical(CapabilityStatement)