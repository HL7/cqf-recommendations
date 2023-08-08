Instance: cpg-immunizationrecommendation-activitydefinition
InstanceOf: ActivityDefinition
Usage: #example
Title: "CPG ImmunizationRecommendation ActivityDefinition"
* insert ActivityDefinitionMetadata(cpg-immunizationrecommendation-activitydefinition, CPGImmunizationRecommendationActivityDefinition)
* kind = #ImmunizationRecommendation
* profile = Canonical(cpg-immunizationrecommendation)
* dynamicValue[+]
  * path = "patient"
  * expression
    * language = #text/cql
    * expression = "Patient"
//  * fhir_comments = = "Set patient to the Patient context, note that this will result in a Patient,\n\tbut is being assigned to a Reference, implementation will need to sort this, or\n\tCQL will need to construct a reference"
* dynamicValue[+]
  * path = "date"
  * expression
    * language = #text/cql
    * expression = "Now()"
//  * fhir_comments = = "Set date to Now()"
* dynamicValue[+]
  * path = "recommendation.vaccineCode"
  * expression
    * language = #text/cql
    * expression = "VaccineCodeableConcept"
//  * fhir_comments = = "Set recommendation.vaccineCode to the VaccineCodeableConcept parameter"
* dynamicValue[+]
  * path = "recommendation.forecastStatus"
  * expression
    * language = #text/cql
    * expression = "Code { system: 'http://terminology.hl7.org/CodeSystem/immunization-recommendation-status', code: 'due' }"
//  * fhir_comments = = "Set recommendation.forecastStatus to the Code http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due"