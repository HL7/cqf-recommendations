Instance: activity-example-recommendimmunization-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "Activity Example Recommend Immunization PD"
* description = "Example Plan Definition for a recommendation to provide an immunization"
* insert PDRecommendationMetadata(activity-example-recommendimmunization-pd)
* name = "ActivityExampleRecommendImmunizationPD"
* type = $plan-definition-type#eca-rule
* library = Canonical(recommendimmunization-library)
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-recommendimmunization-ad)