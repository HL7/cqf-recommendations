Instance: dnci-scenario8-communication
InstanceOf: Communication
Usage: #example
Description: "Example test case - Do Not Collect Information - Scenario 8 - Patient"
* status = #completed
* subject = Reference(Patient/dnci-scenario8-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnci-scenario8-patient)