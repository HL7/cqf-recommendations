Instance: activity-example-administermedication-ad
InstanceOf: CPGAdministerMedicationActivity
Usage: #example
* insert ExampleActivityDefinitionMetadata(activity-example-administermedication-ad)
* title = "Activity Example Administer Medication AD"
* description = "Example Activity Definition for a recommendation to administer a medication"
* name = "ActivityExampleAdministerMedicationAD"
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
    * reference = Canonical(administermedication-library)