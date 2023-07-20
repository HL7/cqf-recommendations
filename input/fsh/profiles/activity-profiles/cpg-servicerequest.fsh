Profile: CPGServiceRequest
Parent: ServiceRequest
Id: cpg-servicerequest
Title: "CPG Service Request"
Description: "Recommendation for a particular procedure or referral to a specialist or instructions for self-care such as smoking cessation counseling or exercise"
* insert StructureDefinitionMetadata(cpg-servicerequest)
* extension contains CPGRationale named rationale 0..1 MS
* identifier MS
* instantiatesCanonical MS
  * ^short = "Source"
  * ^definition = "A link back to the definition that produced this recommendation. Typically a Plan or Activity Definition."
* status MS
* intent MS
* category MS
* priority MS
* doNotPerform MS
* code MS
* subject only Reference(CPGPatient)
* subject MS
* encounter only Reference(CPGEncounter)
* encounter MS
* occurrence[x] MS
* asNeeded[x] MS
* supportingInfo MS
  * ^short = "Pertinent information"
  * ^definition = "The pertinent positive or negative information relevant to the recommendation."
  * ^comment = "This will typically be the most relevant case features used in determining applicability, but could also be other patient-specific information relevant to interpreting or assessing appropriateness of the recommendation with respect to the patient."