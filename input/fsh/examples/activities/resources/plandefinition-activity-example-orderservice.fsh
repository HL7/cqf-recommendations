Instance: activity-example-orderservice-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "Activity Example Order Service PD"
* description = "Example Plan Definition for a recommendation to order a service"
* insert PDRecommendationMetadata(activity-example-orderservice-pd)
* name = "ActivityExampleOrderServicePD"
* type = $plan-definition-type#eca-rule
* library = Canonical(orderservice-library)
* action
  * title = "Greet the patient"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-orderservice-ad)