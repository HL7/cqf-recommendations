Instance: activity-example-enrollment-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
* title = "Activity Example Enrollment PD"
* insert ExamplePlanDefinitionMetadata(activity-example-enrollment-pd)
* description = "Example Plan Definition for a recommendation to enroll a patient"
* name = "ActivityExampleEnrollmentPD"
* type = $plan-definition-type#eca-rule
* library = Canonical(enrollment-library)
* action
  * title = "Enroll patient in example pathway"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-enrollment-ad)