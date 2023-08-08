Instance: activity-example-documentmedication-ad
InstanceOf: CPGDocumentMedicationActivity
Usage: #example
Title: "Activity Example Document Medication AD"
* insert ActivityDefinitionMetadata(activity-example-documentmedication-ad)
* description = "Example Activity Definition for a recommendation to document a medication"
* name = "ActivityExampleDocumentMedicationAD"
* kind = #Task
// * profile = Canonical(CPGDocumentMedicationTask) now corrected to document (vs dispense) in profile, but throwing sushi error d/t dependcy
* code = $cpg-activity-type-cs#document-medication "Document a medication"
* intent = #proposal
* doNotPerform = false
* dynamicValue[+]
  * path = "input.type"
  * expression
    * language = #text/fhirpath
    * expression = "code"
* dynamicValue[+]
  * path = "input.value"
  * expression
    * language = #text/cql-identifier
    * expression = "Medication Proposal"
    * reference = Canonical(documentmedication-library)