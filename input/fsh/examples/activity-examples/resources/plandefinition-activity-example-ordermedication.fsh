Instance: activity-example-ordermedication-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
* title = "Activity Example Order Medication PD"
* insert KnowledgeArtifactPDRecommendationMetadata(activity-example-ordermedication-pd)
* description = "Example Plan Definition for a recommendation to order a medication"
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