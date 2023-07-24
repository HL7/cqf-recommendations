Instance: activity-example-reportflag-pd
InstanceOf: PlanDefinition
Usage: #example
Description: "Example Plan Definition for a recommendation to report a flat"
* insert PDRecommendationMetadata(activity-example-reportflag-pd)
* name = "ActivityExampleReportFlagPD"
* title = "Activity Example Report Flag PD"
* type = $plan-definition-type#eca-rule
* library = "http://hl7.org/fhir/uv/cpg/Library/ReportFlag"
* action
  * title = "Report a flag"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-reportflag-ad)