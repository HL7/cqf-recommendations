Instance: activity-example-donotsendmessage-ad
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation not to send a message"
* insert ActivityDefinitionMetadata(activity-example-donotsendmessage-ad)
* name = "ActivityExampleDoNotSendMessageAD"
* title = "Activity Example Do Not Send Message AD"
* kind = #CommunicationRequest
* profile = Canonical(CPGCommunicationRequest)
* code = $cpg-activity-type-cs#send-message "Send a message"
* doNotPerform = true
* dynamicValue
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"