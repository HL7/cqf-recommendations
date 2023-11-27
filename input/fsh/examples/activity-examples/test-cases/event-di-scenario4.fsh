Instance: event-di-scenario4
InstanceOf: cpg-recorddetectedissuetask
Usage: #example
Description: "Example test case"
* meta.profile = Canonical(CPGTask)
* contained = detected-issue
* instantiatesCanonical = Canonical(activity-example-recorddetectedissue-ad)
* status = #completed
* intent = #order
* code = $cpg-activity-type-cs#record-detected-issue "Record a detected issue"
* for = Reference(di-scenario4-patient)
* input[detectedIssue]
  * type = $cpg-activity-type-cs#record-detected-issue "Record a detected issue"
  * valueReference = Reference(detected-issue)
* output
  * type = $cpg-activity-type-cs#record-detected-issue "Record a detected issue"
  * valueReference = Reference(di-scenario4)

Instance: detected-issue
InstanceOf: DetectedIssue
Usage: #inline
* status = #final
* code = $v3-ActCode#TIME "timing detected issue"
* severity = #high
* patient = Reference(di-scenario4-patient)
* detail = "Proposed therapy may be inappropriate or ineffective based on proposed start or end time."