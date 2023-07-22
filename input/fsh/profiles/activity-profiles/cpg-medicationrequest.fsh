Profile: CPGMedicationRequest
Parent: MedicationRequest
Id: cpg-medicationrequest
Title: "CPG Medicaiton Request"
Description: "Recommendation for a specific medication as part of the delivery of a computable clinical practice guideline"
* ^version = "1.0.0"
* insert StructureDefinitionMetadata(cpg-medicationrequest)
* extension contains CPGRationale named rationale 0..1 MS
* identifier MS
* status MS
* intent MS
* category MS
* priority MS
* doNotPerform MS
* medication[x] MS
* subject only Reference(CPGPatient)
* subject MS
* encounter only Reference(CPGEncounter)
* encounter MS
* supportingInformation MS
  * ^short = "Pertinent information"
  * ^definition = "The pertinent positive or negative information relevant to the recommendation."
  * ^comment = "This will typically be the most relevant case features used in determining applicability, but could also be other patient-specific information relevant to interpreting or assessing appropriateness of the recommendation with respect to the patient."
* instantiatesCanonical MS
  * ^short = "Source"
  * ^definition = "A link back to the definition that produced this recommendation. Typically a Plan or Activity Definition."