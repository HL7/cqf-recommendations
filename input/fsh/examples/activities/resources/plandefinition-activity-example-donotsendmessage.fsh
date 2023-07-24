Instance: activity-example-donotsendmessage-pd
InstanceOf: PlanDefinition
Usage: #example
Description: "Example Plan Definition for a recommendation not to send a message"
* insert PDRecommendationMetadata(activity-example-donotsendmessage-pd)
* name = "ActivityExampleDoNotSendMessagePD"
* title = "Activity Example Do Not Send Message PD"
* type = $plan-definition-type#eca-rule
* library = "http://hl7.org/fhir/uv/cpg/Library/DoNotSendMessage"
* action
  * title = "Do not greet the patient"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-donotsendmessage-ad)