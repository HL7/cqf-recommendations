Instance: activity-example-dispensemedication-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "Activity Example Dispense Medication PD"
* description = "Example Plan Definition for a recommendation to dispense a medication"
* insert PDRecommendationMetadata(activity-example-dispensemedication-pd)
* name = "ActivityExampleDispenseMedicationPD"
* type = $plan-definition-type#eca-rule
* library = Canonical(dispensemedication-library)
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-dispensemedication-ad)