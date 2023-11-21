Instance: os-scenario4
InstanceOf: CPGProcedure
Usage: #example
Description: "Example test case"
* status = #completed
* category = $sct#386053000 "Evaluation procedure (procedure)"
  * text = "Evaluation"
* code = $sct#710830005 "Assessment of passive range of motion (procedure)"
  * text = "Assessment of passive range of motion"
* subject = Reference(os-scenario4-patient)
* performedDateTime = "2016-09-27"
* reasonCode.text = "assessment of mobility limitations due to osteoarthritis"
* bodySite = $sct#36701003 "Both knees (body structure)"
  * text = "Both knees"