Instance: activity-example-sendmessage-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
Title: "Activity Example Send Message PD"
* insert KnowledgeArtifactPDRecommendationMetadata(activity-example-sendmessage-pd)
* description = "Example Plan Definition for a recommendation to send a message"
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