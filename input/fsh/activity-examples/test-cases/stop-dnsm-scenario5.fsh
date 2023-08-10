Instance: stop-dnsm-scenario5
InstanceOf: CommunicationRequest
Usage: #example
Description: "Example test case"
* extension[workflow-instantiatesCanonical].valueCanonical = Canonical(activity-example-donotsendmessage-ad)
* status = #draft
* doNotPerform = true
* subject = Reference(Patient/dnsm-scenario5-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario5-patient)