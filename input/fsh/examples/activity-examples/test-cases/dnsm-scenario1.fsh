Instance: dnsm-scenario1
InstanceOf: CPGCommunication
Usage: #example
Description: "Example test case - Do Not Send Message - Scenario 1 - Communication"
* status = #in-progress
* subject = Reference(Patient/dnsm-scenario1-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario1-patient)