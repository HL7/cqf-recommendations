Instance: activity-example-collectinformation-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "Activity Example Collect Information PD"
* description = "Example Plan Definition for a recommendation to collect information"
* insert PDRecommendationMetadata(activity-example-collectinformation-pd)
* name = "ActivityExampleCollectInformationPD"
* type = $plan-definition-type#eca-rule
* library = Canonical(collectinformation-library)
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-collectinformation-ad)