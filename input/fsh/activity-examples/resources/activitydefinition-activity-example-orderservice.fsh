Instance: activity-example-orderservice-ad
InstanceOf: CPGServiceRequestActivity
Usage: #example
* title = "Activity Example Order Service AD"
* insert KnowledgeArtifactADMetadata(activity-example-orderservice-ad)
* description = "Example Activity Definition for a recommendation to order a service"
* name = "ActivityExampleOrderServiceAD"
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