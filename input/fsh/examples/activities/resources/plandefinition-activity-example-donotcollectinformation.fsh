Instance: activity-example-donotcollectinformation-pd
InstanceOf: PlanDefinition
Usage: #example
Description: "Example Plan Definition for a recommendation not to collect information"
* insert PDRecommendationMetadata(activity-example-donotcollectinformation-pd)
* name = "ActivityExampleDoNotCollectInformationPD"
* title = "Activity Example Do Not Collect Information PD"
* type = $plan-definition-type#eca-rule
* library = "http://hl7.org/fhir/uv/cpg/Library/DoNotCollectInformation"
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-donotcollectinformation-ad)