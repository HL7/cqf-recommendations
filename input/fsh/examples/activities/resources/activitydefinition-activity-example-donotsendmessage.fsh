

Instance: activity-example-donotsendmessage
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation not to send a message"
* insert ActivityDefinitionMetadata(activity-example-donotsendmessage)
* name = "ActivityExampleDoNotSendMessage"
* title = "Activity Example Do Not Send Message"
* kind = #CommunicationRequest
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationrequest"
* code = $cpg-activity-type-cs#send-message "Send a message"
* doNotPerform = true
* dynamicValue.path = "status"
* dynamicValue.expression.language = #text/cql
* dynamicValue.expression.expression = "'draft'"