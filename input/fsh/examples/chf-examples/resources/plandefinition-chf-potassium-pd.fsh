Instance: chf-potassium-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
Title: "CHF Potassium Recommendation"
* insert CHFPlanDefinitionMetadata(chf-potassium-pd)
* insert PlanDefinitionPartOfExtension(chf-hypervolemia)
* insert PlanDefinitionEnabledExtension
* name = "CHFPotassiumPD"
* description = "Monitor potassium"
* type = $plan-definition-type#eca-rule
* goal
  * description.text = "Potassium goal"
  * start = $sct#32485007 "Admission to hospital"
* action
  * id = "potassium"
  * title = "Potassium"
  * description = "Monitor potassium"
  * code = $cpg-common-process-cs#diagnostic-testing
  * trigger
    * type = #periodic
    * timingTiming.repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
  * definitionCanonical = Canonical(chf-potassium-ad)