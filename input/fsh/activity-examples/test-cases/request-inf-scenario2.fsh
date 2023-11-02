Instance: request-inf-scenario2
InstanceOf: cpg-recordinferencetask
Usage: #example
Description: "Example test case"
* contained = Inline-Instance-for-request-inf-scenario2
* instantiatesCanonical = Canonical(activity-example-recordinference-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#record-inference "Record an inference"
* for = Reference(inf-scenario2-patient)
* input[inference]
  * type = $cpg-activity-type-cs#record-inference "Record an inference"
  * valueReference = Reference(inference)

Instance: Inline-Instance-for-request-inf-scenario2
InstanceOf: Observation
Usage: #inline
* id = "inference"
* status = #final
* code.text = "Inference"
* issued = "2020-01-15T10:30:00Z"
* subject = Reference(inf-scenario2-patient)
* performer = Reference(inf-practitioner)
* effectiveDateTime = "2023-01-23"