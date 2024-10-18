Instance: dnsm-scenario6
InstanceOf: CPGCommunicationRequest
Usage: #example
Description: "Example test case - Do Not Send Message - Scenario 6 - Patient"
* status = #active
* subject = Reference(Patient/dnsm-scenario6-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario6-patient)