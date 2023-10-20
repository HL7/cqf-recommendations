Instance: sm-scenario2
InstanceOf: CPGCommunicationRequest
Usage: #example
Description: "Example test case"
* extension[workflow-instantiatesCanonical].valueCanonical = Canonical(activity-example-sendmessage-ad)
* status = #active
* subject = Reference(Patient/sm-scenario2-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/sm-scenario2-patient)