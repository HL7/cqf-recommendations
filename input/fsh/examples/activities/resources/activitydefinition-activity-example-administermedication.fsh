Instance: activity-example-administermedication-ad
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to administer a medication"
* insert ActivityDefinitionMetadata(activity-example-administermedication-ad)
* name = "ActivityExampleAdministerMedicationAD"
* title = "Activity Example Administer Medication AD"
* kind = #Task
* profile = Canonical(CPGAdministerMedicationTask)
* code = $cpg-activity-type-cs#administer-medication "Administer a medication"
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
    * expression = "Medication Proposal"
    * reference = "http://hl7.org/fhir/uv/cpg/Library/administer-medication-library"