

Instance: activity-example-dispensemedication
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to dispense a medication"
* insert ActivityDefinitionMetadata(activity-example-dispensemedication)
* name = "ActivityExampleDispenseMedication"
* title = "Activity Example Dispense Medication"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-dispensemedicationtask"
* code = $cpg-activity-type-cs#dispense-medication "Dispense a medication"
* intent = #proposal
* doNotPerform = false
* dynamicValue[+].path = "input.type"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "code"
* dynamicValue[+].path = "input.value"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "Medication Proposal"
* dynamicValue[=].expression.reference = "http://hl7.org/fhir/uv/cpg/Library/DispenseMedication"