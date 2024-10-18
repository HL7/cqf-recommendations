Instance: request-gr-scenario2
InstanceOf: cpg-generatereporttask
Usage: #example
Description: "Example test case - Generate Report - Scenario 2 - Generate Report Task"
* meta.profile = Canonical(CPGTask)
* instantiatesCanonical = Canonical(activity-example-generatereport-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#generate-report "Generate a metric or case report"
* for = Reference(gr-scenario2-patient)
* input[definition]
  * type = $cpg-activity-type-cs#generate-report "Generate a metric or case report"
  * valueCanonical = Canonical(activity-example-generatereport-measure)