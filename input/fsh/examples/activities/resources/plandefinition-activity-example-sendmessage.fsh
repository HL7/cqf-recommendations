Instance: activity-example-sendmessage-pd
InstanceOf: PlanDefinition
Usage: #example
Description: "Example Plan Definition for a recommendation to send a message"
* insert PDRecommendationMetadata(activity-example-sendmessage-pd)
* name = "ActivityExampleSendMessagePD"
* title = "Activity Example Send Message PD"
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
  * definitionCanonical = Canonical(activity-example-sendmessage-ad)