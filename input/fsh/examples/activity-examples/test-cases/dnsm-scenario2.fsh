Instance: dnsm-scenario2
InstanceOf: CPGCommunicationRequest
Usage: #example
Description: "Example test case"
* extension[workflow-instantiatesCanonical].valueCanonical = Canonical(activity-example-donotsendmessage-ad)
* status = #active
* doNotPerform = true
* subject = Reference(Patient/dnsm-scenario2-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario2-patient)