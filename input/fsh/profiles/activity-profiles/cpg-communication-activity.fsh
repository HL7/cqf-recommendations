Profile: CPGCommunicationActivity
Parent: $cpg-computableactivity
Id: cpg-communicationactivity
Title: "CPG Communication Activity"
Description: "Definition of a recommendation for a specific communication with the patient or other participant as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-communicationactivity)
* kind 1..1 MS
* kind only code
* kind = #CommunicationRequest (exactly)
* profile 1..1 MS
* profile only canonical
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationrequest" (exactly)
  * ^short = "At least a CPG CommunicationRequest"
  * ^definition = "The profile that the resulting communication request must conform to; at least a CPGCommunicationRequest, though the activity definition may introduce further constraints."
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS