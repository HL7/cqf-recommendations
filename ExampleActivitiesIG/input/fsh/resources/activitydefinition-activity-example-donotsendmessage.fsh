Instance: activity-example-donotsendmessage-ad
InstanceOf: CPGCommunicationActivity
Usage: #example
Title: "Activity Example Do Not Send Message AD"
* description = "Example Activity Definition for a recommendation not to send a message"
* insert ActivityDefinitionMetadata(activity-example-donotsendmessage-ad)
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