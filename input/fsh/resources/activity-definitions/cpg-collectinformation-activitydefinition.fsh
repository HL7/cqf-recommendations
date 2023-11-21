Instance: cpg-collectinformation-activitydefinition
InstanceOf: ActivityDefinition
Usage: #definition
Title: "CPG CollectInformation ActivityDefinition"
* insert ActivityDefinitionMetadata(cpg-collectinformation-activitydefinition, CPGCollectInformationActivityDefinition)
* description = "Example Activity Definition for a recommendation to collect information"
* kind = #Task
* profile = Canonical(cpg-questionnairetask)
* code = $cpg-activity-type-cs#collect-information "Collect Information"
* doNotPerform = false
* dynamicValue[+]
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"
  // "Set status to the string value 'draft'"
* dynamicValue[+]
  * path = "for"
  * expression
    * language = #text/cql
    * expression = "Patient"
  // "Set for to the Patient context, note that this will result in a Patient,\n\tbut is being assigned to a Reference, implementation will need to sort this, or\n\tCQL will need to construct a reference"
* dynamicValue[+]
  * path = "encounter"
  * expression
    * language = #text/cql
    * expression = "Encounter"
  // "Set encounter to the Encounter parameter, note that this will result in an Encounter,\n\tbut is being assigned to a Reference, implementation will need to sort this,\n\tor CQL will need to construct a reference"
* dynamicValue[+]
  * path = "authoredOn"
  * expression
    * language = #text/cql
    * expression = "Now()"
  // "Set authored on to Now()"
* dynamicValue[+]
  * path = "owner"
  * expression
    * language = #text/cql
    * expression = "Practitioner"
  // "Reference to a Practitioner parameter, note that this will result in a Practitioner,\n\tbut is being assigned to a Reference, implementation will need to sort this,\n\tor CQL will need to construct a reference"
* dynamicValue[+]
  * path = "input"
  * expression
    * language = #text/cql
    * expression = "TaskInput { type: \"Collect Information\", value: QuestionnaireCanonical }"
  // "Set input to the QuestionnaireCanonical parameter"