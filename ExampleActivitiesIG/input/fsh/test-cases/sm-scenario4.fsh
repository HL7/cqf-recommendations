Instance: sm-scenario4
InstanceOf: Communication
Usage: #example
* status = #completed
* subject = Reference(Patient/sm-scenario4-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/sm-scenario4-patient)