Instance: activity-example-recommendimmunization-pd
InstanceOf: PlanDefinition
Usage: #example
Description: "Example Plan Definition for a recommendation to provide an immunization"
* insert PDRecommendationMetadata(activity-example-recommendimmunization-pd)
* name = "ActivityExampleRecommendImmunizationPD"
* title = "Activity Example Recommend Immunization PD"
* type = $plan-definition-type#eca-rule
* library = "http://hl7.org/fhir/uv/cpg/Library/RecommendImmunization"
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-recommendimmunization-ad)