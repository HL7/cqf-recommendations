Instance: request-dm-scenario5
InstanceOf: cpg-dispensemedicationtask
Usage: #example
Description: "Example test case"
* meta.profile = Canonical(CPGTask)
* instantiatesCanonical = Canonical(activity-example-dispensemedication-ad)
* status = #completed
* intent = #order
* code = $cpg-activity-type-cs#dispense-medication "Dispense a medication"
* for = Reference(dm-scenario5-patient)
* input[medicationRequest]
  * type = $cpg-activity-type-cs#order-medication "Order a medication"
  * valueReference = Reference(dm-scenario5-mr)