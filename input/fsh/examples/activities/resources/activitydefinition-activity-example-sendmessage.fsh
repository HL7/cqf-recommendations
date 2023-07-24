Instance: activity-example-sendmessage-ad
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to send a message"
* insert ActivityDefinitionMetadata(activity-example-sendmessage-ad)
* name = "ActivityExampleSendMessageAD"
* title = "Activity Example Send Message AD"
* kind = #CommunicationRequest
* profile = Canonical(CPGCommunicationRequest)
* code = $cpg-activity-type-cs#send-message "Send a message"
* doNotPerform = false
* dynamicValue[+]
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"
* dynamicValue[+]
  * path = "payload.content"
  * expression
    * language = #text/cql
    * expression = "'Hello!'"