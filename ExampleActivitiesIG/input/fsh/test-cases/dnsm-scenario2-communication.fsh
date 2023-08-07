Instance: dnsm-scenario2-communication
InstanceOf: Communication
Usage: #example
* status = #in-progress
* subject = Reference(Patient/dnsm-scenario2-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario2-patient)