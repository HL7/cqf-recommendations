Instance: activity-example-ordermedication-pd
InstanceOf: PlanDefinition
Usage: #example
Description: "Example Plan Definition for a recommendation to order a medication"
* insert PDRecommendationMetadata(activity-example-ordermedication-pd)
* name = "ActivityExampleOrderMedicationPD"
* title = "Activity Example Order Medication PD"
* type = $plan-definition-type#eca-rule
* library = "http://hl7.org/fhir/uv/cpg/Library/OrderMedication"
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-ordermedication-ad)