Instance: dnsm-scenario4
InstanceOf: CommunicationRequest
Usage: #example
Description: "Example test case"
* status = #active
* subject = Reference(Patient/dnsm-scenario4-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario4-patient)