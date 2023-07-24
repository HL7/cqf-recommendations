Instance: activity-example-proposediagnosis-pd
InstanceOf: PlanDefinition
Usage: #example
Description: "Example Plan Definition for a recommendation to propose a diagnosis"
* insert PDRecommendationMetadata(activity-example-proposediagnosis-pd)
* name = "ActivityExampleProposeDiagnosisPD"
* title = "Activity Example Propose Diagnosis PD"
* type = $plan-definition-type#eca-rule
* library = "http://hl7.org/fhir/uv/cpg/Library/ProposeDiagnosis"
* action
  * title = "Propose a diagnosis"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-proposediagnosis-ad)