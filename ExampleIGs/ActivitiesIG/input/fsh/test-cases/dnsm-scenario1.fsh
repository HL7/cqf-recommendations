Instance: dnsm-scenario1
InstanceOf: Communication
Usage: #example
* status = #in-progress
* subject = Reference(Patient/dnsm-scenario1-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario1-patient)