Instance: dnsm-scenario8
InstanceOf: Communication
Usage: #example
* status = #completed
* subject = Reference(Patient/dnsm-scenario8-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario8-patient)