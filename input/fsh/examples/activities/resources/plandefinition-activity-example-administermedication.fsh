Instance: activity-example-administermedication-pd
InstanceOf: PlanDefinition
Usage: #example
Description: "Example Plan Definition for a recommendation to administer a medication"
* insert PDRecommendationMetadata(activity-example-administermedication-pd)
* name = "ActivityExampleAdministerMedicationPD"
* title = "Activity Example Administer Medication PD"
* type = $plan-definition-type#eca-rule
* library = "http://hl7.org/fhir/uv/cpg/Library/administer-medication-library"
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-administermedication-ad)