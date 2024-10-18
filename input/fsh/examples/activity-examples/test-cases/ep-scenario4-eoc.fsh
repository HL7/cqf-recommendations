Instance: ep-scenario4-eoc
InstanceOf: cpg-case
Usage: #example
Description: "Example test case - Enroll Patient - Scenario 4 - EpisodeOfCare"
* extension[cpg-enrolledIn].valueCanonical = Canonical(activity-example-pathway-pd)
* status = #active
* diagnosis.condition = Reference(ep-scenario4-condition)
* patient = Reference(ep-scenario4-patient)