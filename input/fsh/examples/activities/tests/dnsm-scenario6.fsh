Instance: dnsm-scenario6
InstanceOf: CommunicationRequest
Usage: #example
* status = #active
* subject = Reference(Patient/dnsm-scenario6-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario6-patient)