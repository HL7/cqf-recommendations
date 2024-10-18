Instance: dnsm-scenario2-communication
InstanceOf: CPGCommunication
Usage: #example
Description: "Example test case - Do Not Send Message - Scenario 2 - Communication"
* status = #in-progress
* subject = Reference(Patient/dnsm-scenario2-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario2-patient)