Instance: activity-example-collectinformation-pd
InstanceOf: PlanDefinition
Usage: #example
Description: "Example Plan Definition for a recommendation to collect information"
* insert PDRecommendationMetadata(activity-example-collectinformation-pd)
* name = "ActivityExampleCollectInformationPD"
* title = "Activity Example Collect Information PD"
* type = $plan-definition-type#eca-rule
* library = "http://hl7.org/fhir/uv/cpg/Library/collectinformation-library"
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-collectinformation-ad)