Instance: sm-scenario4
InstanceOf: CPGCommunication
Usage: #example
Description: "Example test case"
* status = #completed
* subject = Reference(Patient/sm-scenario4-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/sm-scenario4-patient)