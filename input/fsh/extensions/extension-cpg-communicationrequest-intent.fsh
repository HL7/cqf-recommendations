Extension: CPGCommunicationRequestIntent
Id: cpg-communicationrequestIntent
Title: "CPG CommunicationRequest Intent Extension"
Description: "Whether the request is a proposal, plan, or an original order."
* insert StructureDefinitionMetadata(cpg-communicationrequestIntent)
* insert ExtensionContext(CommunicationRequest)
* value[x] only code
* valueCode from $request-intent-vs (required)
  * ^binding.description = "Indicates the level of authority/intentionality associated with the communication request and where the request fits into the workflow chain."