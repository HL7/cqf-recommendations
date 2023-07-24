

Instance: activity-example-orderservice
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to order a service"
* insert ActivityDefinitionMetadata(activity-example-orderservice)
* name = "ActivityExampleOrderService"
* title = "Activity Example Order Service"
* kind = #ServiceRequest
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequest"
* code = $cpg-activity-type-cs#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* dynamicValue.path = "status"
* dynamicValue.expression.language = #text/cql
* dynamicValue.expression.expression = "'draft'"