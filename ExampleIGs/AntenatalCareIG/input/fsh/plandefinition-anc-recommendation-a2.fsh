Instance: anc-recommendation-a2
InstanceOf: PlanDefinition
Usage: #example
Title: "PlanDefinition - WHO ANC Guideline Recommendation #A2"
* insert PlanDefinitionMetadata(anc-recommendation-a2, Recommendation_A2)
* description = "Example of a Plan Definition for ANC Recommendation A2.1"
* type = $plan-definition-type#eca-rule "ECA Rule"
* library = Canonical(ANCRecommendationA2)
* action
  * title = "Iron and Folic Acid Supplementation"
  * textEquivalent = "Daily elemental iron should be increased to 120 mg until her Hb concentration rises to normal"
  * trigger
    * type = #named-event
    * name = "anc-contact"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql
      * expression = "Has Anemia"