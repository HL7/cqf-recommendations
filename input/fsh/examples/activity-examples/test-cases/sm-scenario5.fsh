Instance: sm-scenario5
InstanceOf: CPGCommunicationRequest
Usage: #example
Description: "Example test case - Send Message - Scenario 5 - CommunicationRequest"
* extension[workflow-instantiatesCanonical].valueCanonical = Canonical(activity-example-sendmessage-ad)
* status = #completed
* subject = Reference(Patient/sm-scenario5-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/sm-scenario5-patient)