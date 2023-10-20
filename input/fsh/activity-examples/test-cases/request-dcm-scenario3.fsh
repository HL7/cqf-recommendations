Instance: request-dcm-scenario3
InstanceOf: cpg-documentmedicationtask
Usage: #example
Description: "Example test case"
* instantiatesCanonical = Canonical(activity-example-documentmedication-ad)
* status = #in-progress
* intent = #order
* code = $cpg-activity-type-cs#document-medication "Document a medication"
* for = Reference(dcm-scenario3-patient)
* input[medicationRequest]
  * type = $cpg-activity-type-cs#order-medication "Order a medication"
  * valueReference = Reference(dcm-scenario3)