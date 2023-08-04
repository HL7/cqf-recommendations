Instance: dnsm-scenario3
InstanceOf: CommunicationRequest
Usage: #example
* extension[workflow-instantiatesCanonical].valueCanonical = Canonical(activity-example-donotsendmessage-ad)
* status = #revoked
* statusReason.text = "Medical reason"
* doNotPerform = true
* subject = Reference(Patient/dnsm-scenario3-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario3-patient)