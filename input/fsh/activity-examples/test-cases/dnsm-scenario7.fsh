Instance: dnsm-scenario7
InstanceOf: Communication
Usage: #example
Description: "Example test case"
* status = #not-done
* statusReason.text = "Medical reason"
* subject = Reference(Patient/dnsm-scenario7-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario7-patient)