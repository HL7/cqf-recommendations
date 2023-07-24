

Instance: activity-example-documentmedication
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to document a medication"
* insert ActivityDefinitionMetadata(activity-example-documentmedication)
* name = "ActivityExampleDocumentMedication"
* title = "Activity Example Document Medication"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-documentmedicationtask"
* code = $cpg-activity-type-cs#document-medication "Document a medication"
* intent = #proposal
* doNotPerform = false
* dynamicValue[+].path = "input.type"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "code"
* dynamicValue[+].path = "input.value"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "Medication Proposal"
* dynamicValue[=].expression.reference = "http://hl7.org/fhir/uv/cpg/Library/DocumentMedication"