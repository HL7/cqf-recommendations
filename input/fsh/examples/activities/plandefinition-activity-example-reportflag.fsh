Instance: activity-example-reportflag-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "Activity Example Report Flag PD"
* description = "Example Plan Definition for a recommendation to report a flat"
* insert PDRecommendationMetadata(activity-example-reportflag-pd)
* name = "ActivityExampleReportFlagPD"
* type = $plan-definition-type#eca-rule
* library = Canonical(reportflag-library)
* action
  * title = "Report a flag"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-reportflag-ad)