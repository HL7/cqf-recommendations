Instance: activity-example-recommendimmunization-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
* title = "Activity Example Recommend Immunization PD"
* insert KnowledgeArtifactPDRecommendationMetadata(activity-example-recommendimmunization-pd)
* description = "Example Plan Definition for a recommendation to provide an immunization"
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