Instance: activity-example-generatereport-pd
InstanceOf: PlanDefinition
Usage: #example
Description: "Example Plan Definition for a recommendation to generate a report"
* insert PDRecommendationMetadata(activity-example-generatereport-pd)
* name = "ActivityExampleGenerateReportPD"
* title = "Activity Example Generate Report PD"
* type = $plan-definition-type#eca-rule
* library = "http://hl7.org/fhir/uv/cpg/Library/GenerateReport"
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-generatereport-ad)