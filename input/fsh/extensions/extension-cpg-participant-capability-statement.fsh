Extension: CPGParticipantCapabilityStatement
Id: cpg-participantCapabilityStatement
Title: "CPG Participant Capability Statement"
Description: "A CapabilityStatement that specifies what capabilities a device must have in order to participant in this action of a PlanDefinition."
* insert ExtensionMetadata(cpg-participantCapabilityStatement, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "PlanDefinition.action.participant"
* . 0..1
  * ^short = "What capabilities the device has"
  * ^definition = "A CapabilityStatement that specifies what capabilities a device must have in order to participant in this action of a PlanDefinition."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-participantCapabilityStatement" (exactly)
* value[x] only canonical
  * ^type.targetProfile = "http://hl7.org/fhir/StructureDefinition/CapabilityStatement"