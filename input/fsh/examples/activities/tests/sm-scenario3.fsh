Instance: sm-scenario3
InstanceOf: CommunicationRequest
Usage: #example
* extension[workflow-instantiatesCanonical].valueCanonical = Canonical(activity-example-sendmessage-ad)
* status = #revoked
* statusReason.text = "Patient refused"
* subject = Reference(Patient/sm-scenario3-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/sm-scenario3-patient)