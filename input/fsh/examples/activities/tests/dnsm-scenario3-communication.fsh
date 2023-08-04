Instance: dnsm-scenario3-communication
InstanceOf: Communication
Usage: #example
* status = #in-progress
* subject = Reference(Patient/dnsm-scenario3-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario3-patient)