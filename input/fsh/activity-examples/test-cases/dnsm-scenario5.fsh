Instance: dnsm-scenario5
InstanceOf: CPGCommunicationRequest
Usage: #example
Description: "Example test case"
* status = #active
* subject = Reference(Patient/dnsm-scenario5-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario5-patient)