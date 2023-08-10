Instance: di-scenario4
InstanceOf: DetectedIssue
Usage: #example
Description: "Example test case"
* status = #final
* code = $v3-ActCode#TIME "timing detected issue"
* severity = #high
* patient = Reference(di-scenario4-patient)
* detail = "Proposed therapy may be inappropriate or ineffective based on proposed start or end time."