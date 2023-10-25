Instance: dnci-scenario8-communication
InstanceOf: Communication
Usage: #example
Description: "Example test case"
* status = #completed
* subject = Reference(Patient/dnci-scenario8-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnci-scenario8-patient)