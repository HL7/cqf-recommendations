Instance: activity-example-generatereport-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "Activity Example Generate Report PD"
* description = "Example Plan Definition for a recommendation to generate a report"
* insert PDRecommendationMetadata(activity-example-generatereport-pd)
* name = "ActivityExampleGenerateReportPD"
* type = $plan-definition-type#eca-rule
* library = Canonical(generatereport-library)
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-generatereport-ad)