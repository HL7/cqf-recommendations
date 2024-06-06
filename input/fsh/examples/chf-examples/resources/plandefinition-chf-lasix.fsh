Instance: chf-lasix
InstanceOf: CPGRecommendationDefinition
Usage: #example
Title: "CHF LASIX Recommendation"
* insert ExamplePlanDefinitionMetadata(chf-lasix)
* insert PlanDefinitionPartOfExtension(chf-hypervolemia)
* insert PlanDefinitionEnabledExtension
* name = "CHFLASIX"
* description = "Administer LASIX IV, transition to PO as appropriate"
* type = $plan-definition-type#eca-rule
* goal
  * description.text = "Transition to LASIX PO"
  * start = $sct#32485007 "Admission to hospital"
* action[+]
  * id = "lasix-iv"
  * title = "LASIX IV"
  * description = "Administer LASIX IV"
  * code = $cpg-common-process-cs#dispense-medications
  * condition
    * kind = #stop
    * expression
      * language = #text/cql-identifier
      * expression = "Should Stop LASIX IV"
  * definitionCanonical = Canonical(chf-lasix-iv)
* action[+]
  * id = "lasix-po"
  * title = "LASIX PO"
  * description = "Administer LASIX PO"
  * code = $cpg-common-process-cs#dispense-medications
  * condition
    * kind = #start
    * expression
      * language = #text/cql-identifier
      * expression = "Should Start LASIX PO"
  * definitionCanonical = Canonical(chf-lasix-po)