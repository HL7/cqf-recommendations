Instance: activity-example-sendmessage-ad
InstanceOf: CPGCommunicationActivity
Usage: #example
Title: "Activity Example Send Message AD"
* insert KnowledgeArtifactADMetadata(activity-example-sendmessage-ad)
* description = "Example Activity Definition for a recommendation to send a message"
* name = "ActivityExampleSendMessageAD"
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