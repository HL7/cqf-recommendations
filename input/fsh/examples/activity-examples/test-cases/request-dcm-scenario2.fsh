Instance: request-dcm-scenario2
InstanceOf: cpg-documentmedicationtask
Usage: #example
Description: "Example test case"
* instantiatesCanonical = Canonical(activity-example-documentmedication-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#document-medication "Document a medication"
* for = Reference(dcm-scenario2-patient)
* input[medicationRequest]
  * type = $cpg-activity-type-cs#order-medication "Order a medication"
  * valueReference = Reference(dcm-scenario2)