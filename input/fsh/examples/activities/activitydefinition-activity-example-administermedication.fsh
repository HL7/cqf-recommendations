Instance: activity-example-administermedication-ad
InstanceOf: CPGAdministerMedicationActivity
Usage: #example
Title: "Activity Example Administer Medication AD"
* description = "Example Activity Definition for a recommendation to administer a medication"
* insert ActivityDefinitionMetadata(activity-example-administermedication-ad)
* name = "ActivityExampleAdministerMedicationAD"
* kind = #Task
* profile = Canonical(CPGAdministerMedicationTask)
* code = $cpg-activity-type-cs#administer-medication "Administer a medication"
* doNotPerform = false
* dynamicValue[+]
  * path = "input.type"
  * expression
    * language = #text/fhirpath
    * expression = "code"
* dynamicValue[+]
  * path = "input.value"
  * expression
    * language = #text/cql-identifier
    * expression = "Medication Proposal"
    * reference = Canonical(administermedication-library)