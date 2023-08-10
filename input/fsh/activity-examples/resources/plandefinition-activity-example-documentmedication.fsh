Instance: activity-example-documentmedication-pd
InstanceOf: PlanDefinition
Usage: #example
Title: "Activity Example Document Medication PD"
* insert KnowledgeArtifactPDRecommendationMetadata(activity-example-documentmedication-pd)
* description = "Example Plan Definition for a recommendation to document a medication"
* name = "ActivityExampleDocumentMedicationPD"
* type = $plan-definition-type#eca-rule
* library = Canonical(documentmedication-library)
* action
  * title = "Collect date of patient last visit"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Is Recommendation Applicable"
  * type = $action-type#create
  * definitionCanonical = Canonical(activity-example-documentmedication-ad)