Instance: dnsm-scenario7
InstanceOf: CPGCommunication
Usage: #example
Description: "Example test case - Do Not Send Message - Scenario 7 - Patient"
* status = #not-done
* statusReason.text = "Medical reason"
* subject = Reference(Patient/dnsm-scenario7-patient)
* payload.contentString = "Hello!"
* recipient = Reference(Patient/dnsm-scenario7-patient)