Instance: request-dcm-scenario7
InstanceOf: cpg-documentmedicationtask
Usage: #example
Description: "Example test case - Document Medication - Scenario 7 - Document Medication Task"
* meta.profile = Canonical(CPGTask)
* instantiatesCanonical = Canonical(activity-example-documentmedication-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#document-medication "Document a medication"
* for = Reference(dcm-scenario7-patient)
* input[medicationRequest]
  * type = $cpg-activity-type-cs#order-medication "Order a medication"
  * valueReference = Reference(dcm-scenario7-mr)