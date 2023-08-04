Instance: request-di-scenario2
InstanceOf: Task
Usage: #example
* contained = Inline-Instance-for-request-di-scenario2
* instantiatesCanonical = Canonical(activity-example-recorddetectedissue-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#record-detected-issue "Record a detected issue"
* for = Reference(di-scenario2-patient)
* input
  * type = $cpg-activity-type-cs#record-detected-issue "Record a detected issue"
  * valueReference = Reference(detected-issue)

Instance: Inline-Instance-for-request-di-scenario2
InstanceOf: DetectedIssue
Usage: #inline
* id = "detected-issue"
* status = #final
* code = $v3-ActCode#TIME "timing detected issue"
* severity = #high
* patient = Reference(di-scenario2-patient)
* detail = "Proposed therapy may be inappropriate or ineffective based on proposed start or end time."