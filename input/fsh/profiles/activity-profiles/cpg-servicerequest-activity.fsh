Profile: CPGServiceRequestActivity
Parent: CPGComputableActivityDefinition
Id: cpg-servicerequestactivity
Title: "CPG Service Request Activity"
Description: "The definition of a recommendation for a particular procedure or referral to a specialist or instructions for self-care such as smoking cessation counseling or exercise"
* insert StructureDefinitionMetadata(cpg-servicerequestactivity)
* kind 1..1 MS
* kind only code
* kind = #ServiceRequest (exactly)
* profile 1..1 MS
* profile only canonical
* profile = CPGServiceRequest (exactly)
  * ^short = "At least a CPG ServiceRequest"
  * ^definition = "The profile that the resulting service request must conform to; at least a CPGServiceRequest, though the activity definition may introduce further constraints."
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS



