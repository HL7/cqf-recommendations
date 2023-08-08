Instance: cpg-administermedication-activitydefinition
InstanceOf: ActivityDefinition
Usage: #example
Title: "CPG Administer Medication ActivityDefinition"
* insert ActivityDefinitionMetadata(cpg-administermedication-activitydefinition, CPGAdministerMedicationActivityDefinition)
* kind = #Task
* profile = Canonical(cpg-administermedicationtask)
* code = $cpg-activity-type-cs#administer-medication "Administer a medication"
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
    * expression = "TaskInput { type: \"Administer Medication\", value: MedicationAdministration }"
//  * fhir_comments = = "Set input to the MedicationRequest parameter"