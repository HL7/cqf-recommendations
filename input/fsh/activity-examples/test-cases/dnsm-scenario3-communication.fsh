Instance: dnsm-scenario3-communication
InstanceOf: CPGCommunication
Usage: #example
Description: "Example test case"
* status = #in-progress
* subject = Reference(Patient/dnsm-scenario3-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario3-patient)