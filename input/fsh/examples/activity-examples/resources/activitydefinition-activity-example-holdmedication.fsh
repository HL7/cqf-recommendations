Instance: activity-example-holdmedication-ad
InstanceOf: CPGHoldActivity
Usage: #example
* title = "Activity Example Hold Medication AD"
* insert ExampleActivityDefinitionMetadata(activity-example-holdmedication-ad)
* description = "Example Activity Definition for a recommendation to hold a medication"
* name = "ActivityExampleHoldMedicationAD"
* kind = #Task
* profile = Canonical(CPGHoldTask)
* code = $cpg-activity-type-cs#hold-activity "Hold an activity in progress"
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
    * reference = Canonical(holdmedication-library)