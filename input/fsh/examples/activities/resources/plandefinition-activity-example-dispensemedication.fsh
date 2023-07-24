Instance: activity-example-dispensemedication-pd
InstanceOf: PlanDefinition
Usage: #example
Description: "Example Plan Definition for a recommendation to dispense a medication"
* insert PDRecommendationMetadata(activity-example-dispensemedication-pd)
* name = "ActivityExampleDispenseMedicationPD"
* title = "Activity Example Dispense Medication PD"
* type = $plan-definition-type#eca-rule
* library = "http://hl7.org/fhir/uv/cpg/Library/DispenseMedication"
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-dispensemedication-ad)