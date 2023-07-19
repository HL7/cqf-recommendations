Profile: CPGRecordDetectedIssueActivity
Parent: $cpg-computableactivity
Id: cpg-recorddetectedissueactivity
Title: "CPG Record Detected Issue Activity"
Description: "Definition of a recommendation to record a specific detected issue as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-recorddetectedissueactivity)
* kind 1..1 MS
* kind only code
* kind = #Task (exactly)
* profile 1..1 MS
* profile only canonical
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recorddetectedissuetask" (exactly)
  * ^short = "At least a CPG CommunicationRequest"
  * ^definition = "The profile that the resulting communication request must conform to; at least a CPGCommunicationRequest, though the activity definition may introduce further constraints."
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS



