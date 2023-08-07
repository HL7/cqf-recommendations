Instance: sm-scenario7
InstanceOf: CommunicationRequest
Usage: #example
* extension[workflow-instantiatesCanonical].valueCanonical = Canonical(activity-example-sendmessage-ad)
* status = #revoked
* statusReason.text = "Patient refused"
* subject = Reference(Patient/sm-scenario7-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/sm-scenario7-patient)