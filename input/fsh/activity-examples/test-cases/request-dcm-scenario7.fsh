Instance: request-dcm-scenario7
InstanceOf: Task
Usage: #example
Description: "Example test case"
* instantiatesCanonical = Canonical(activity-example-documentmedication-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#document-medication "Document a medication"
* for = Reference(dcm-scenario7-patient)
* input
  * type = $cpg-activity-type-cs#order-medication "Order a medication"
  * valueReference = Reference(dcm-scenario7-mr)