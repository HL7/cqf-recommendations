Instance: request-dm-scenario2
InstanceOf: cpg-dispensemedicationtask
Usage: #example
Description: "Example test case"
* instantiatesCanonical = Canonical(activity-example-dispensemedication-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#dispense-medication "Dispense a medication"
* for = Reference(dm-scenario2-patient)
* input[medicationRequest]
  * type = $cpg-activity-type-cs#order-medication "Order a medication"
  * valueReference = Reference(dm-scenario2)