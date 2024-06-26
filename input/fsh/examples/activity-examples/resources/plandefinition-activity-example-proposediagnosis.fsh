Instance: activity-example-proposediagnosis-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
* title = "Activity Example Propose Diagnosis PD"
* insert ExamplePlanDefinitionMetadata(activity-example-proposediagnosis-pd)
* description = "Example Plan Definition for a recommendation to propose a diagnosis"
* name = "ActivityExampleProposeDiagnosisPD"
* type = $plan-definition-type#eca-rule
* library = Canonical(proposediagnosis-library)
* action
  * title = "Propose a diagnosis"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-proposediagnosis-ad)