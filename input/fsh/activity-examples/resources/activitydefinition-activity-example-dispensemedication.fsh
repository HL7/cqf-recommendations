Instance: activity-example-dispensemedication-ad
InstanceOf: CPGDispenseMedicationActivity
Usage: #example
Title: "Activity Example Dispense Medication AD"
* insert KnowledgeArtifactADMetadata(activity-example-dispensemedication-ad)
* description = "Example Activity Definition for a recommendation to dispense a medication"
* name = "ActivityExampleDispenseMedicationAD"
* kind = #Task
* profile = Canonical(CPGDispenseMedicationTask)
* code = $cpg-activity-type-cs#dispense-medication "Dispense a medication"
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
    * reference = Canonical(dispensemedication-library)