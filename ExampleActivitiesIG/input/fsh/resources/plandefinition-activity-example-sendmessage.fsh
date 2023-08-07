Instance: activity-example-sendmessage-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "Activity Example Send Message PD"
* description = "Example Plan Definition for a recommendation to send a message"
* insert PDRecommendationMetadata(activity-example-sendmessage-pd)
* name = "ActivityExampleSendMessagePD"
* type = $plan-definition-type#eca-rule
* library = Canonical(sendmessage-library)
* action
  * title = "Greet the patient"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-sendmessage-ad)