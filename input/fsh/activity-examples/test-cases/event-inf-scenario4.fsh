Instance: event-inf-scenario4
InstanceOf: cpg-recordinferencetask
Usage: #example
Description: "Example test case"
* contained = inference
* instantiatesCanonical = Canonical(activity-example-recordinference-ad)
* status = #completed
* intent = #order
* code = $cpg-activity-type-cs#record-inference "Record an inference"
* for = Reference(inf-scenario4-patient)
* input[inference]
  * type = $cpg-activity-type-cs#record-inference "Record an inference"
  * valueReference = Reference(inference)
* output
  * type = $cpg-activity-type-cs#record-inference "Record an inference"
  * valueReference = Reference(inf-scenario4)

Instance: inference
InstanceOf: Observation
Usage: #inline
* status = #final
* code.text = "Inference"
* issued = "2020-01-15T10:30:00Z"
* subject = Reference(inf-scenario4-patient)
* performer = Reference(inf-practitioner)
* effectiveDateTime = "2023-01-23"