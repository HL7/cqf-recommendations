Instance: activity-example-recorddetectedissue-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
* title = "Activity Example Record Detected Issue PD"
* insert ExamplePlanDefinitionMetadata(activity-example-recorddetectedissue-pd)
* description = "Example Plan Definition for a recommendation to record a detected issue"
* name = "ActivityExampleRecordDetectedIssuePD"
* type = $plan-definition-type#eca-rule
* library = Canonical(recorddetectedissue-library)
* action
  * title = "Record a detected issue"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-recorddetectedissue-ad)