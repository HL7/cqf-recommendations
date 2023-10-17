Instance: dnci-scenario8-communication
InstanceOf: Communication
Usage: #example
* status = #completed
* subject = Reference(Patient/dnci-scenario8-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnci-scenario8-patient)