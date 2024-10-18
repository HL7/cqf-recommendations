Instance: dnsm-scenario4
InstanceOf: CPGCommunicationRequest
Usage: #example
Description: "Example test case - Do Not Send Message - Scenario 4 - Patient"
* status = #active
* subject = Reference(Patient/dnsm-scenario4-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario4-patient)