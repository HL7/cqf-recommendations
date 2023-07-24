Instance: activity-example-documentmedication-pd
InstanceOf: PlanDefinition
Usage: #example
Description: "Example Plan Definition for a recommendation to document a medication"
* insert PDRecommendationMetadata(activity-example-documentmedication-pd)
* name = "ActivityExampleDocumentMedicationPD"
* title = "Activity Example Document Medication PD"
* type = $plan-definition-type#eca-rule
* library = "http://hl7.org/fhir/uv/cpg/Library/DocumentMedication"
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-documentmedication-ad)