Instance: dnsm-scenario6
InstanceOf: CPGCommunicationRequest
Usage: #example
Description: "Example test case"
* status = #active
* subject = Reference(Patient/dnsm-scenario6-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario6-patient)