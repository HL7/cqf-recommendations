Instance: activity-example-recordinference-pd
InstanceOf: PlanDefinition
Usage: #example
Description: "Example Plan Definition for a recommendation to record an inference"
* insert PDRecommendationMetadata(activity-example-recordinference-pd)
* name = "ActivityExampleRecordInferencePD"
* title = "Activity Example Record Inference PD"
* type = $plan-definition-type#eca-rule
* library = "http://hl7.org/fhir/uv/cpg/Library/RecordInference"
* action
  * title = "Record an inference"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-recordinference-ad)