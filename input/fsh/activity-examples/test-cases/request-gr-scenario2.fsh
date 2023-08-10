Instance: request-gr-scenario2
InstanceOf: Task
Usage: #example
Description: "Example test case"
* instantiatesCanonical = Canonical(activity-example-generatereport-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#generate-report "Generate a metric or case report"
* for = Reference(gr-scenario2-patient)
* input
  * type = $cpg-activity-type-cs#generate-report "Generate a metric or case report"
  * valueCanonical = Canonical(activity-example-generatereport-measure)