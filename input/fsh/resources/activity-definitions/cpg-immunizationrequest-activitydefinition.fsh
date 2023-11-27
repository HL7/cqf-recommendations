Instance: cpg-immunizationrequest-activitydefinition
InstanceOf: ActivityDefinition
Usage: #definition
Title: "CPG ImmunizationRequest ActivityDefinition"
* insert ActivityDefinitionMetadata(cpg-immunizationrequest-activitydefinition, CPGImmunizationRequestActivityDefinition)
* description = "Example Activity Definition for a recommendation to provide an immunization"
* kind = #MedicationRequest
* profile = Canonical(cpg-immunizationrequest)
* doNotPerform = false
* dynamicValue[+]
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"
//  * fhir_comments = = "Set status to the string value 'draft'"
* dynamicValue[+]
  * path = "intent"
  * expression
    * language = #text/cql
    * expression = "'proposal'"
//  * fhir_comments = = "Set intent to the string value 'proposal'"
* dynamicValue[+]
  * path = "priority"
  * expression
    * language = #text/cql
    * expression = "'routine'"
//  * fhir_comments = = "Set priority to the string value 'routine'"
* dynamicValue[+]
  * path = "medication"
  * expression
    * language = #text/cql
    * expression = "VaccineCodeableConcept"
//  * fhir_comments = = "Set recommendation.vaccineCode to the VaccineCodeableConcept parameter"
* dynamicValue[+]
  * path = "subject"
  * expression
    * language = #text/cql
    * expression = "Patient"
//  * fhir_comments = = "Set patient to the Patient context, note that this will result in a Patient,\n\tbut is being assigned to a Reference, implementation will need to sort this, or\n\tCQL will need to construct a reference"
* dynamicValue[+]
  * path = "encounter"
  * expression
    * language = #text/cql
    * expression = "Encounter"
//  * fhir_comments = = "Set encounter to the Encounter parameter, note that this will result in an Encounter,\r\n\tbut is being assigned to a Reference, implementation will need to sort this,\r\n\tor CQL will need to construct a reference"
* dynamicValue[+]
  * path = "authoredOn"
  * expression
    * language = #text/cql
    * expression = "Now()"
//  * fhir_comments = = "Set authored on to Now()"
* dynamicValue[+]
  * path = "performer"
  * expression
    * language = #text/cql
    * expression = "Practitioner"
//  * fhir_comments = = "Reference to a Practitioner parameter, note that this will result in a Practitioner,\r\n\tbut is being assigned to a Reference, implementation will need to sort this,\r\n\tor CQL will need to construct a reference"
* dynamicValue[+]
  * path = "date"
  * expression
    * language = #text/cql
    * expression = "Now()"
//  * fhir_comments = = "Set date to Now()"
