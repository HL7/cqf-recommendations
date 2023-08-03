Instance: activity-example-donotsendmessage-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "Activity Example Do Not Send Message PD"
* description = "Example Plan Definition for a recommendation not to send a message"
* insert PDRecommendationMetadata(activity-example-donotsendmessage-pd)
* name = "ActivityExampleDoNotSendMessagePD"
* type = $plan-definition-type#eca-rule
* library = Canonical(donotsendmessage-library)
* action
  * title = "Do not greet the patient"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-donotsendmessage-ad)