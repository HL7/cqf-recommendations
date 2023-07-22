Profile: CPGRecordDetectedIssueTask
Parent: CPGTask
Id: cpg-recorddetectedissuetask
Title: "CPG Record Detected Issue Task"
Description: "Recommendation to record a specific detected issue as part of the delivery of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-recorddetectedissuetask)
* code only CodeableConcept
* code = $cpg-activity-type-cs#record-detected-issue
* code MS
* input 0..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* input contains detectedIssue 1..1 MS
* input[detectedIssue]
  * ^short = "Detected issue to record"
  * ^definition = "The detected issue to be recorded."
  * type only CodeableConcept
  * type = $cpg-activity-type-cs#record-detected-issue
  * type MS
  * value[x] only Reference(CPGDetectedIssue)
  * value[x] MS



