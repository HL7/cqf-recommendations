Instance: activity-example-resumemedication-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
* title = "Activity Example Resume Medication PD"
* insert ExamplePlanDefinitionMetadata(activity-example-resumemedication-pd)
* description = "Example Plan Definition for a recommendation to resume a medication currently on hold"
* name = "ActivityExampleResumeMedicationPD"
* type = $plan-definition-type#eca-rule
* library = Canonical(resumemedication-library)
* action
  * title = "Resume a medication currently on hold"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-resumemedication-ad)