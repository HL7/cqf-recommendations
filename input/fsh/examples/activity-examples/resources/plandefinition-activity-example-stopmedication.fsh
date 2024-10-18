Instance: activity-example-stopmedication-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
* title = "Activity Example Stop Medication PD"
* insert ExamplePlanDefinitionMetadata(activity-example-stopmedication-pd)
* description = "Example Plan Definition for a recommendation to stop a medication"
* name = "ActivityExampleStopMedicationPD"
* type = $plan-definition-type#eca-rule
* library = Canonical(stopmedication-library)
* action
  * title = "Stop a currently active medication"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-stopmedication-ad)