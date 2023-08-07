Instance: sm-scenario5
InstanceOf: CommunicationRequest
Usage: #example
* extension[workflow-instantiatesCanonical].valueCanonical = Canonical(activity-example-sendmessage-ad)
* status = #completed
* subject = Reference(Patient/sm-scenario5-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/sm-scenario5-patient)