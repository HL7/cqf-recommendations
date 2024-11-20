Instance: activity-example-stopmedication-ad
InstanceOf: CPGStopActivity
Usage: #example
* title = "Activity Example Stop Medication AD"
* insert ExampleActivityDefinitionMetadata(activity-example-stopmedication-ad)
* description = "Example Activity Definition for a recommendation to stop a medication"
* name = "ActivityExampleStopMedicationAD"
* kind = #Task
* profile = Canonical(CPGStopTask)
* code = $cpg-activity-type-cs#stop-activity "Stop (discontinue) an activity in progress"
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
    * reference = Canonical(stopmedication-library)