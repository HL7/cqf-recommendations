Instance: sm-scenario7-communication
InstanceOf: CPGCommunication
Usage: #example
Description: "Example test case - Send Message - Scenario 7 - Communication"
* basedOn = Reference(sm-scenario7)
* status = #not-done
* statusReason.text = "Patient refused"
* subject = Reference(Patient/sm-scenario7-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/sm-scenario7-patient)