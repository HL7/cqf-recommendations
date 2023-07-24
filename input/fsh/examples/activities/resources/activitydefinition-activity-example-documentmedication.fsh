Instance: activity-example-documentmedication-ad
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to document a medication"
* insert ActivityDefinitionMetadata(activity-example-documentmedication-ad)
* name = "ActivityExampleDocumentMedicationAD"
* title = "Activity Example Document Medication AD"
* kind = #Task
* profile = Canonical(CPGDocumentMedicationTask)
* code = $cpg-activity-type-cs#document-medication "Document a medication"
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
    * reference = "http://hl7.org/fhir/uv/cpg/Library/DocumentMedication"