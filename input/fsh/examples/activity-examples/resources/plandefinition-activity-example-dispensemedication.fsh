Instance: activity-example-dispensemedication-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
* title = "Activity Example Dispense Medication PD"
* insert ExamplePlanDefinitionMetadata(activity-example-dispensemedication-pd)
* description = "Example Plan Definition for a recommendation to dispense a medication"
* name = "ActivityExampleDispenseMedicationPD"
* type = $plan-definition-type#eca-rule
* library = Canonical(dispensemedication-library)
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-dispensemedication-ad)