Instance: event-gr-scenario4
InstanceOf: Task
Usage: #example
Description: "Example test case"
* instantiatesCanonical = Canonical(activity-example-generatereport-ad)
* status = #completed
* intent = #order
* code = $cpg-activity-type-cs#generate-report "Generate a metric or case report"
* for = Reference(gr-scenario4-patient)
* input
  * type = $cpg-activity-type-cs#generate-report "Generate a metric or case report"
  * valueCanonical = Canonical(activity-example-generatereport-measure)
* output
  * type = $cpg-activity-type-cs#generate-report "Generate a metric or case report"
  * valueReference = Reference(gr-scenario4)