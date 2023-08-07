Instance: activity-example-administermedication-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "Activity Example Administer Medication PD"
* insert PDRecommendationMetadata(activity-example-administermedication-pd)
* description = "Example Plan Definition for a recommendation to administer a medication"
* name = "ActivityExampleAdministerMedicationPD"
* type = $plan-definition-type#eca-rule
* library = Canonical(administermedication-library)
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-administermedication-ad)

