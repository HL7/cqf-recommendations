Instance: activity-example-administermedication-ad
InstanceOf: CPGAdministerMedicationActivity
Usage: #example
* title = "Activity Example Administer Medication AD"
* insert KnowledgeArtifactADMetadata(activity-example-administermedication-ad)
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