Instance: sm-scenario7
InstanceOf: CPGCommunicationRequest
Usage: #example
Description: "Example test case"
* extension[workflow-instantiatesCanonical].valueCanonical = Canonical(activity-example-sendmessage-ad)
* status = #revoked
* statusReason.text = "Patient refused"
* subject = Reference(Patient/sm-scenario7-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/sm-scenario7-patient)