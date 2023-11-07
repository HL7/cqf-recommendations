Instance: cpg-recorddetectedissue-activity
InstanceOf: ActivityDefinition
Usage: #example
Title: "CPG Record DetectedIssue ActivityDefinition"
* insert ActivityDefinitionMetadata(cpg-recorddetectedissue-activity, CPGRecordDetectedIssueTaskActivityDefinition)
* description = "Example Activity Definition for a recommendation to record a detected issue"
* kind = #Task
* profile = Canonical(cpg-recorddetectedissuetask)
* code = $cpg-activity-type-cs#record-detected-issue "Record a detected issue"
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
    * expression = "TaskInput { type: \"Record Detected Issue\", value: DetectedIssue { code: \"Drug-Drug Interaction\", detail: IssueCodeableConcept, subject: Patient, encounter: Encounter, identified: Today() } }"
//  * fhir_comments = = "Set input to a constructed DetectedIssue with the IssueCodeableConcept parameter"