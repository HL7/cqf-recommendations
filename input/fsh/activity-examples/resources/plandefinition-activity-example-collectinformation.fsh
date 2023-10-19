Instance: activity-example-collectinformation-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
Title: "Activity Example Collect Information PD"
* insert KnowledgeArtifactPDRecommendationMetadata(activity-example-collectinformation-pd)
* description = "Example Plan Definition for a recommendation to collect information"
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