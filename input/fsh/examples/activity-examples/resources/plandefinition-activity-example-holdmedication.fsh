Instance: activity-example-holdmedication-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
* title = "Activity Example Hold Medication PD"
* insert ExamplePlanDefinitionMetadata(activity-example-holdmedication-pd)
* description = "Example Plan Definition for a recommendation to hold a medication"
* name = "ActivityExampleHoldMedicationPD"
* type = $plan-definition-type#eca-rule
* library = Canonical(holdmedication-library)
* action
  * title = "Hold a currently active medication"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-holdmedication-ad)