Instance: cpg-proposediagnosistask-activitydefinition
InstanceOf: CPGProposeDiagnosisActivity
Usage: #example
Title: "CPG Propose Diagnosis ActivityDefinition"
* insert ActivityDefinitionMetadata(cpg-proposediagnosistask-activitydefinition, CPGProposeDiagnosisTaskActivityDefinition)
* description = "Example Activity Definition for a recommendation to propose a diagnosis"
* kind = #Task
* profile = Canonical(cpg-proposediagnosistask)
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
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
    * expression = "TaskInput { type: \"Propose Diagnosis\", value: Condition { clinicalStatus: \"Active\", verificationStatus \"Unconfirmed\", code: DiagnosisCodeableConcept, subject: Patient, encounter: Encounter, onsetDateTime: Today() } }"
//  * fhir_comments = = "Set input to a constructed Condition with the DiagnosisCodeableConcept parameter"