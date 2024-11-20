Instance: activity-example-resumemedication-ad
InstanceOf: CPGResumeActivity
Usage: #example
* title = "Activity Example Resume Medication AD"
* insert ExampleActivityDefinitionMetadata(activity-example-resumemedication-ad)
* description = "Example Activity Definition for a recommendation to resume a medication on hold"
* name = "ActivityExampleResumeMedicationAD"
* kind = #Task
* profile = Canonical(CPGResumeTask)
* code = $cpg-activity-type-cs#resume-activity "Resume an activity currently on hold"
* intent = #proposal
* doNotPerform = false
* dynamicValue[+]
  * path = "input.type"
  * expression
    * language = #text/cql
    * expression = "code"
* dynamicValue[+]
  * path = "input.value"
  * expression
    * language = #text/cql
    * expression = "Medication Proposal"
    * reference = Canonical(resumemedication-library)