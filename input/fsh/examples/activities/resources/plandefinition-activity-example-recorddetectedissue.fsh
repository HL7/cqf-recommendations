Instance: activity-example-recorddetectedissue-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "Activity Example Record Detected Issue PD"
* description = "Example Plan Definition for a recommendation to record a detected issue"
* insert PDRecommendationMetadata(activity-example-recorddetectedissue-pd)
* name = "ActivityExampleRecordDetectedIssuePD"
* type = $plan-definition-type#eca-rule
* library = Canonical(recorddetectedissue-library)
* action
  * title = "Record a detected issue"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-recorddetectedissue-ad)