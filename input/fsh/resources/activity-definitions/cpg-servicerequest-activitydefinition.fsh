Instance: cpg-servicerequest-activitydefinition
InstanceOf: CPGServiceRequestActivity
Usage: #example
Title: "CPG ServiceRequest ActivityDefinition"
* insert ActivityDefinitionMetadata(cpg-servicerequest-activitydefinition,CPGServiceRequestActivityDefinition)
* url = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/cpg-servicerequest-activitydefinition"
* description = "Example Activity Definition for a recommendation to request a service"
* kind = #ServiceRequest
* profile = Canonical(cpg-servicerequest)
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
  * path = "code"
  * expression
    * language = #text/cql
    * expression = "ServiceCodeableConcept"
//  * fhir_comments = = "Set code to the ServiceCodeableConcept parameter"
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
//  * fhir_comments = = "Reference to a Practitioner parameter, note that this will result in a Practitioner,\n\tbut is being assigned to a Reference, implementation will need to sort this,\n\tor CQL will need to construct a reference"