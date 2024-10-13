Profile: CPGCommunicationRequest
Parent: CommunicationRequest
Id: cpg-communicationrequest
Title: "CPG Communication Request"
Description: "Recommendation for a specific communication with the patient or other participant as part of the delivery of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-communicationrequest)
* extension contains
  $request-intent named intent 0..1 MS and
  $workflow-instantiatesCanonical named instantiatesCanonical 0..1 MS and
  CPGRationale named rationale 0..1 MS
* extension[instantiatesCanonical]
  * ^short = "Source"
  * ^definition = "A link back to the definition that produced this recommendation. Typically a Plan or Activity Definition."
* identifier MS
* status MS
* statusReason MS
* category MS
* priority MS
* doNotPerform MS
* subject MS
* about MS
  * ^short = "Pertinent information"
  * ^definition = "The pertinent positive or negative information relative to this recommendation."
  * ^comment = "This will typically be the most relevant case features used in determining applicability, but could also be other patient-specific information relevant to interpreting or assessing appropriateness of the recommendation with respect to the patient."
* encounter MS
* requester MS
* recipient MS
* sender MS