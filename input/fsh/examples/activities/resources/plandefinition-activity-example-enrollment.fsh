Instance: activity-example-enrollment-pd
InstanceOf: PlanDefinition
Usage: #example
Description: "Example Plan Definition for a recommendation to enroll a patient"
* insert PDRecommendationMetadata(activity-example-enrollment-pd)
* name = "ActivityExampleEnrollmentPD"
* title = "Activity Example Enrollment PD"
* type = $plan-definition-type#eca-rule
* library = "http://hl7.org/fhir/uv/cpg/Library/EnrollPatient"
* action
  * title = "Enroll patient in example pathway"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-enrollment-ad)