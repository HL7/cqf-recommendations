Instance: activity-example-donotcollectinformation-ad
InstanceOf: CPGCollectInformationActivity
Usage: #example
* title = "Activity Example Do Not Collect Information AD"
* insert ExampleActivityDefinitionMetadata(activity-example-donotcollectinformation-ad)
* description = "Example Activity Definition for a recommendation not to collect information"
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