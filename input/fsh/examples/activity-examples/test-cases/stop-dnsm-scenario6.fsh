Instance: stop-dnsm-scenario6
InstanceOf: CPGCommunicationRequest
Usage: #example
Description: "Example test case"
* extension[workflow-instantiatesCanonical].valueCanonical = Canonical(activity-example-donotsendmessage-ad)
* status = #revoked
* statusReason.text = "Medical reason"
* doNotPerform = true
* subject = Reference(Patient/dnsm-scenario6-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario6-patient)