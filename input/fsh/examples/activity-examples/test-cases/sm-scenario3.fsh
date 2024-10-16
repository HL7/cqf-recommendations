Instance: sm-scenario3
InstanceOf: CPGCommunicationRequest
Usage: #example
Description: "Example test case - Send Message - Scenario 3 - CommunicationRequest"
* extension[workflow-instantiatesCanonical].valueCanonical = Canonical(activity-example-sendmessage-ad)
* status = #revoked
* statusReason.text = "Patient refused"
* subject = Reference(Patient/sm-scenario3-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/sm-scenario3-patient)