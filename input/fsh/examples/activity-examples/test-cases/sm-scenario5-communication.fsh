Instance: sm-scenario5-communication
InstanceOf: CPGCommunication
Usage: #example
Description: "Example test case"
* basedOn = Reference(sm-scenario5)
* status = #completed
* subject = Reference(Patient/sm-scenario5-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/sm-scenario5-patient)