Instance: activity-example-generatereport-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
* title = "Activity Example Generate Report PD"
* insert KnowledgeArtifactPDRecommendationMetadata(activity-example-generatereport-pd)
* description = "Example Plan Definition for a recommendation to generate a report"
* name = "ActivityExampleGenerateReportPD"
* type = $plan-definition-type#eca-rule
* library = Canonical(generatereport-library)
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-generatereport-ad)