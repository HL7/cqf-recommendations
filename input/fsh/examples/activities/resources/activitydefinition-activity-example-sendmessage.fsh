

Instance: activity-example-sendmessage
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to send a message"
* insert ActivityDefinitionMetadata(activity-example-sendmessage)
* name = "ActivityExampleSendMessage"
* title = "Activity Example Send Message"
* kind = #CommunicationRequest
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationrequest"
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