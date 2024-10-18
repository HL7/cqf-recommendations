Instance: dnsm-scenario8
InstanceOf: CPGCommunication
Usage: #example
Description: "Example test case - Do Not Send Message - Scenario 8 - Patient"
* status = #completed
* subject = Reference(Patient/dnsm-scenario8-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario8-patient)