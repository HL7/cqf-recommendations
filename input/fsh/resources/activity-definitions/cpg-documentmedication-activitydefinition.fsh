Instance: cpg-documentmedication-activitydefinition
InstanceOf: CPGDocumentMedicationActivity
Usage: #example
Title: "CPG Document Medication ActivityDefinition"
* insert ActivityDefinitionMetadata(cpg-documentmedication-activitydefinition, CPGDocumentMedicationActivityDefinition)
* description = "Example Activity Definition for a recommendation to document a medication"
* kind = #Task
* profile = Canonical(cpg-documentmedicationtask)
* code = $cpg-activity-type-cs#document-medication "Document a medication"
* doNotPerform = false
* dynamicValue[+]
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"
//  * fhir_comments = = "Set status to the string value 'draft'"
* dynamicValue[+]
  * path = "for"
  * expression
    * language = #text/cql
    * expression = "Patient"
//  * fhir_comments = = "Set for to the Patient context, note that this will result in a Patient,\n\tbut is being assigned to a Reference, implementation will need to sort this, or\n\tCQL will need to construct a reference"
* dynamicValue[+]
  * path = "encounter"
  * expression
    * language = #text/cql
    * expression = "Encounter"
//  * fhir_comments = = "Set encounter to the Encounter parameter, note that this will result in an Encounter,\n\tbut is being assigned to a Reference, implementation will need to sort this,\n\tor CQL will need to construct a reference"
* dynamicValue[+]
  * path = "authoredOn"
  * expression
    * language = #text/cql
    * expression = "Now()"
//  * fhir_comments = = "Set authored on to Now()"
* dynamicValue[+]
  * path = "owner"
  * expression
    * language = #text/cql
    * expression = "Practitioner"
//  * fhir_comments = = "Reference to a Practitioner parameter, note that this will result in a Practitioner,\n\tbut is being assigned to a Reference, implementation will need to sort this,\n\tor CQL will need to construct a reference"
* dynamicValue[+]
  * path = "input"
  * expression
    * language = #text/cql
    * expression = "TaskInput { type: \"Document Medication\", value: MedicationRequest }"
//  * fhir_comments = = "Set input to the MedicationRequest parameter"