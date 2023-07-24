Instance: activity-example-orderservice-pd
InstanceOf: PlanDefinition
Usage: #example
Description: "Example Plan Definition for a recommendation to order a service"
* insert PDRecommendationMetadata(activity-example-orderservice-pd)
* name = "ActivityExampleOrderServicePD"
* title = "Activity Example Order Service PD"
* type = $plan-definition-type#eca-rule
* library = "http://hl7.org/fhir/uv/cpg/Library/SendMessage"
* action
  * title = "Greet the patient"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-orderservice-ad)