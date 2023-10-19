Instance: activity-example-reportflag-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
Title: "Activity Example Report Flag PD"
* insert KnowledgeArtifactPDRecommendationMetadata(activity-example-reportflag-pd)
* description = "Example Plan Definition for a recommendation to report a flat"
* name = "ActivityExampleReportFlagPD"
* type = $plan-definition-type#eca-rule
* library = Canonical(reportflag-library)
* action
  * title = "Report a flag"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-reportflag-ad)