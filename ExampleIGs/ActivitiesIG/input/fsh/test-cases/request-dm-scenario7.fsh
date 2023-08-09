Instance: request-dm-scenario7
InstanceOf: Task
Usage: #example
Description: "Example test case"
* instantiatesCanonical = Canonical(activity-example-dispensemedication-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#dispense-medication "Dispense a medication"
* for = Reference(dm-scenario7-patient)
* input
  * type = $cpg-activity-type-cs#order-medication "Order a medication"
  * valueReference = Reference(dm-scenario7-mr)