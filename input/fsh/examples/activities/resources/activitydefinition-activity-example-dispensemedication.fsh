Instance: activity-example-dispensemedication-ad
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to dispense a medication"
* insert ActivityDefinitionMetadata(activity-example-dispensemedication-ad)
* name = "ActivityExampleDispenseMedicationAD"
* title = "Activity Example Dispense Medication AD"
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
    * reference = "http://hl7.org/fhir/uv/cpg/Library/DispenseMedication"