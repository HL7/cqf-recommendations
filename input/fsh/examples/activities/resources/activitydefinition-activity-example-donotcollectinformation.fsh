Instance: activity-example-donotcollectinformation-ad
InstanceOf: ActivityDefinition
Usage: #example
Title: "Activity Example Do Not Collect Information AD"
* description = "Example Activity Definition for a recommendation not to collect information"
* insert ActivityDefinitionMetadata(activity-example-donotcollectinformation-ad)
* extension[+]
  * url = $cpg-collectWith
  * valueCanonical = Canonical(activity-example-collectinformation-questionnaire)
* name = "ActivityExampleDoNotCollectInformationAD"
* kind = #Task
* profile = Canonical(cpg-questionnairetask)
* code = $cpg-activity-type-cs#collect-information "Collect information"
* doNotPerform = true
* dynamicValue[+]
  * path = "input.type"
  * expression
    * language = #text/cql
    * expression = "code"
* dynamicValue[+]
  * path = "input.value"
  * expression.
    * language = #text/cql
    * expression = "extension('http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectWith').value"