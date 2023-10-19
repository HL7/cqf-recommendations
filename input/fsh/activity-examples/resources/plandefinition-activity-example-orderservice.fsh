Instance: activity-example-orderservice-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
Title: "Activity Example Order Service PD"
* insert KnowledgeArtifactPDRecommendationMetadata(activity-example-orderservice-pd)
* description = "Example Plan Definition for a recommendation to order a service"
* name = "ActivityExampleOrderServicePD"
* type = $plan-definition-type#eca-rule
* library = Canonical(orderservice-library)
* action
  * title = "Greet the patient"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-orderservice-ad)