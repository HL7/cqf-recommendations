Instance: sm-scenario2
InstanceOf: CommunicationRequest
Usage: #example
* extension[workflow-instantiatesCanonical].valueCanonical = Canonical(activity-example-sendmessage-ad)
* status = #active
* subject = Reference(Patient/sm-scenario2-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/sm-scenario2-patient)