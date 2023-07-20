Profile: CPGReportFlagTask
Parent: CPGTask
Id: cpg-reportflagtask
Title: "Report Flag Task"
Description: "Recommendation to report a flag as part of the delivery of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-reportflagtask)
* code only CodeableConcept
* code = $cpg-activity-type-cs#report-flag
* code MS
* input 0..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* input contains flag 1..1 MS
* input[flag]
  * ^short = "Reported flag"
  * ^definition = "The flag being reported."
  * type only CodeableConcept
  * type = $cpg-activity-type-cs#report-flag
  * type MS
  * value[x] only Reference(CPGFlag)
  * value[x] MS



