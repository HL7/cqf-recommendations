Instance: activity-example-collectinformation-ad
InstanceOf: ActivityDefinition
Usage: #example
Title: "Activity Example Collect Information AD"
* description = "Example Activity Definition for a recommendation to collect information"
* insert ActivityDefinitionMetadata(activity-example-collectinformation-ad)
* extension[+]
  * url = $cpg-collectWith
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)
* name = "ActivityExampleCollectInformationAD"
* kind = #Task
* profile = Canonical(CPGQuestionnaireTask)
* code = $cpg-activity-type-cs#collect-information "Collect information"
* doNotPerform = false
* dynamicValue[+]
  * path = "input.type"
  * expression
    * language = #text/cql
    * expression = "code"
* dynamicValue[+]
  * path = "input.value"
  * expression
    * language = #text/cql
    * expression = "extension('http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectWith').value"