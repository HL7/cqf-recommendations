Instance: activity-example-donotsendmessage-ad
InstanceOf: CPGCommunicationActivity
Usage: #example
Title: "Activity Example Do Not Send Message AD"
* insert KnowledgeArtifactADMetadata(activity-example-donotsendmessage-ad)
* description = "Example Activity Definition for a recommendation not to send a message"
* name = "ActivityExampleDoNotSendMessageAD"
* kind = #CommunicationRequest
* profile = Canonical(CPGCommunicationRequest)
* code = $cpg-activity-type-cs#send-message "Send a message"
* doNotPerform = true
* dynamicValue
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"