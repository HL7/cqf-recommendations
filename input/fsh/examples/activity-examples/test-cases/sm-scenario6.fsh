Instance: sm-scenario6
InstanceOf: CPGCommunication
Usage: #example
Description: "Example test case - Send Message - Scenario 6 - Communication"
* status = #not-done
* statusReason.text = "Patient refused"
* subject = Reference(Patient/sm-scenario6-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/sm-scenario6-patient)