Instance: activity-example-proposediagnosis-ad
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to propose a diagnosis"
* insert ActivityDefinitionMetadata(activity-example-proposediagnosis-ad)
* name = "ActivityExampleProposeDiagnosisAD"
* title = "Activity Example Propose Diagnosis AD"
* kind = #Task
* profile = Canonical(CPGProposeDiagnosisTask)
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* doNotPerform = false
* dynamicValue[+]
  * path = "input.type"
  * expression
    * language = #text/cql-expression
    * expression = "code"
* dynamicValue[+]
  * path = "input.value"
  * expression
    * language = #text/cql-expression
    * expression = "Condition { clinicalStatus: \"Active Condition\", verificationStatus: \"Provisional Condition\", category: \"Problem-list Item\", code: \"Ischemic Stroke\", subject: Patient, onset: Today() }"