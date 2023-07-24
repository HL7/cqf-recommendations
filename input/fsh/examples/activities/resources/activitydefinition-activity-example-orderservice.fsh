Instance: activity-example-orderservice-ad
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to order a service"
* insert ActivityDefinitionMetadata(activity-example-orderservice-ad)
* name = "ActivityExampleOrderServiceAD"
* title = "Activity Example Order Service AD"
* kind = #ServiceRequest
* profile = Canonical(CPGServiceRequest)
* code = $cpg-activity-type-cs#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* dynamicValue
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"