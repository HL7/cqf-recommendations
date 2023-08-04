Instance: activity-example-recordinference-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "Activity Example Record Inference PD"
* description = "Example Plan Definition for a recommendation to record an inference"
* insert PDRecommendationMetadata(activity-example-recordinference-pd)
* name = "ActivityExampleRecordInferencePD"
* type = $plan-definition-type#eca-rule
* library = Canonical(recordinference-library)
* action
  * title = "Record an inference"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-recordinference-ad)