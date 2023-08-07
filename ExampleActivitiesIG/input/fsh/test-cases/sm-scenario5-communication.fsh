Instance: sm-scenario5-communication
InstanceOf: Communication
Usage: #example
* basedOn = Reference(sm-scenario5)
* status = #completed
* subject = Reference(Patient/sm-scenario5-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/sm-scenario5-patient)