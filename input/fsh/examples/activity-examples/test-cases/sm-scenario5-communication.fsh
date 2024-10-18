Instance: sm-scenario5-communication
InstanceOf: CPGCommunication
Usage: #example
Description: "Example test case - Send Message - Scenario 5 - Communication"
* basedOn = Reference(sm-scenario5)
* status = #completed
* subject = Reference(Patient/sm-scenario5-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/sm-scenario5-patient)