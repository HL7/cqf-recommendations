Instance: activity-example-donotsendmessage-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
* title = "Activity Example Do Not Send Message PD"
* insert ExamplePlanDefinitionMetadata(activity-example-donotsendmessage-pd)
* description = "Example Plan Definition for a recommendation not to send a message"
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