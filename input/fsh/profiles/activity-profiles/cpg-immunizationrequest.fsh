Profile: CPGImmunizationRequest
Parent: MedicationRequest
Id: cpg-immunizationrequest
Title: "CPG Immunization Request"
Description: "Recommendation for a particular immunization as part of the delivery of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-immunizationrequest)
* extension contains
  CPGRationale named rationale 0..1 MS and
  CPGRating named rating 0..1 MS
* identifier MS
* status MS
* intent MS
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = coding
* category ^slicing.rules = #open
* category ^slicing.description = "Slice based on the coding pattern"
* category contains immunization 1..1 MS
* category[immunization].coding = $cpg-activity-type-cs#recommend-immunization
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