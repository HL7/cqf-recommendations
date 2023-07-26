Instance: activity-example-ordermedication-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "Activity Example Order Medication PD"
* description = "Example Plan Definition for a recommendation to order a medication"
* insert PDRecommendationMetadata(activity-example-ordermedication-pd)
* name = "ActivityExampleOrderMedicationPD"
* type = $plan-definition-type#eca-rule
* library = Canonical(ordermedication-library)
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-ordermedication-ad)