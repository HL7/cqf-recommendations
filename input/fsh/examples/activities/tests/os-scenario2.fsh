Instance: os-scenario2
InstanceOf: ServiceRequest
Usage: #example
* instantiatesCanonical = Canonical(activity-example-orderservice-ad)
* status = #active
* intent = #proposal
* category = $sct#386053000 "Evaluation procedure (procedure)"
  * text = "Evaluation"
* code = $sct#710830005 "Assessment of passive range of motion (procedure)"
  * text = "Assessment of passive range of motion"
* subject = Reference(os-scenario2-patient)
* occurrenceDateTime = "2016-09-27"
* authoredOn = "2016-09-20"
* reasonCode.text = "assessment of mobility limitations due to osteoarthritis"
* bodySite = $sct#36701003 "Both knees (body structure)"
  * text = "Both knees"