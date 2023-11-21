Instance: cpg-medicationrequest-activitydefinition
InstanceOf: ActivityDefinition
Usage: #definition
* insert ActivityDefinitionMetadata(cpg-medicationrequest-activitydefinition,CPGMedicationRequestActivityDefinition)
* title = "CPG MedicationRequest ActivityDefinition"
* description = "Example Activity Definition for a recommendation to request a medication"
* kind = #MedicationRequest
* profile = Canonical(cpg-medicationrequest)
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
    * expression = "MedicationCodeableConcept"
//  * fhir_comments = = "Set medication to the MedicationCodeableConcept parameter"
* dynamicValue[+]
  * path = "subject"
  * expression
    * language = #text/cql
    * expression = "Patient"
//  * fhir_comments = = "Set subject to the Patient context, note that this will result in a Patient,\r\n\tbut is being assigned to a Reference, implementation will need to sort this, or\r\n\tCQL will need to construct a reference"
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
  * path = "dosageInstruction.doseAndRate.dose"
  * expression
    * language = #text/cql
    * expression = "DoseQuantity"
//  * fhir_comments = = "Set dose to the DoseQuantity parameter"
* dynamicValue[+]
  * path = "dosageInstruction.timing"
  * expression
    * language = #text/cql
    * expression = "Timing { frequency: 1, period: DosesPerDay, periodUnit: 'd' }"
//  * fhir_comments =[+] = "Set timing? Consider approaches (code-based (e.g. BID, TID, QID) or frequency/timing-based)"
//  * fhir_comments =[+] = "Approach here uses \"DosesPerDay\" parameter for simplicity"