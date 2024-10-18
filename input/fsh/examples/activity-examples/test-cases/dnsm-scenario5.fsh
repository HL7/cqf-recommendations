Instance: dnsm-scenario5
InstanceOf: CPGCommunicationRequest
Usage: #example
Description: "Example test case - Do Not Send Message - Scenario 5 - CommunicationRequest"
* status = #active
* subject = Reference(Patient/dnsm-scenario5-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario5-patient)