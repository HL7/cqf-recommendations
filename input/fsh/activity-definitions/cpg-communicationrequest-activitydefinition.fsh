Instance: cpg-communicationrequest-activitydefinition
InstanceOf: ActivityDefinition
Usage: #example
Title: "CPG CommunicationRequest ActivityDefinition"
* insert ActivityDefinitionMetadata(cpg-communicationrequest-activitydefinition,CPGCommunicationRequestActivityDefinition)
* kind = #CommunicationRequest
* profile = Canonical(cpg-communicationrequest)
* doNotPerform = false
* dynamicValue[+]
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"
//  * fhir_comments = = "Set status to the string value 'draft'"
* dynamicValue[+]
  * path = "category"
  * expression
    * language = #text/cql
    * expression = "CategoryCodeableConcept"
//  * fhir_comments = = "Set category to the CategoryCodeableConcept parameter"
* dynamicValue[+]
  * path = "priority"
  * expression
    * language = #text/cql
    * expression = "'routine'"
//  * fhir_comments = = "Set priority to the string value 'routine'"
* dynamicValue[+]
  * path = "subject"
  * expression
    * language = #text/cql
    * expression = "Patient"
//  * fhir_comments = = "Set subject to the Patient context, note that this will result in a Patient,\n\tbut is being assigned to a Reference, implementation will need to sort this, or\n\tCQL will need to construct a reference"
* dynamicValue[+]
  * path = "encounter"
  * expression
    * language = #text/cql
    * expression = "Encounter"
//  * fhir_comments = = "Set encounter to the Encounter parameter, note that this will result in an Encounter,\n\tbut is being assigned to a Reference, implementation will need to sort this,\n\tor CQL will need to construct a reference"
* dynamicValue[+]
  * path = "requester"
  * expression
    * language = #text/cql
    * expression = "Practitioner"
//  * fhir_comments = = "Reference to a Practitioner parameter, note that this will result in a Practitioner,\n\tbut is being assigned to a Reference, implementation will need to sort this,\n\tor CQL will need to construct a reference"
* dynamicValue[+]
  * path = "recipient"
  * expression
    * language = #text/cql
    * expression = "Patient"
//  * fhir_comments = = "Set recipient to the Patient context, note that this will result in a Patient,\n\tbut is being assigned to a Reference, implementation will need to sort this, or\n\tCQL will need to construct a reference"