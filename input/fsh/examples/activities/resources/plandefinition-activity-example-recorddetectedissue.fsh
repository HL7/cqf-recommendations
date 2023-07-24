Instance: activity-example-recorddetectedissue-pd
InstanceOf: PlanDefinition
Usage: #example
Description: "Example Plan Definition for a recommendation to record a detected issue"
* insert PDRecommendationMetadata(activity-example-recorddetectedissue-pd)
* name = "ActivityExampleRecordDetectedIssuePD"
* title = "Activity Example Record Detected Issue PD"
* type = $plan-definition-type#eca-rule
* library = "http://hl7.org/fhir/uv/cpg/Library/RecordDetectedIssue"
* action
  * title = "Record a detected issue"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-recorddetectedissue-ad)