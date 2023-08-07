Instance: request-dcm-scenario5
InstanceOf: Task
Usage: #example
* instantiatesCanonical = Canonical(activity-example-documentmedication-ad)
* status = #completed
* intent = #order
* code = $cpg-activity-type-cs#document-medication "Document a medication"
* for = Reference(dcm-scenario5-patient)
* input
  * type = $cpg-activity-type-cs#order-medication "Order a medication"
  * valueReference = Reference(dcm-scenario5-mr)