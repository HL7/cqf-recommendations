Instance: chf-creatinine-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
Title: "CHF Creatinine Recommendation"
* insert CHFPlanDefinitionMetadata(chf-creatinine-pd)
* insert PlanDefinitionPartOfExtension(chf-hypervolemia)
* insert PlanDefinitionEnabledExtension
* name = "CHFCreatininePD"
* description = "Monitor creatinine"
* type = $plan-definition-type#eca-rule
* goal
  * description.text = "Monitor creatnine"
  * start = $sct#32485007 "Admission to hospital"
* action
  * id = "creatinine"
  * title = "Creatinine"
  * description = "Monitor creatinine"
  * code = $cpg-common-process-cs#diagnostic-testing
  * trigger
    * type = #periodic
    * timingTiming.repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
  * definitionCanonical = Canonical(chf-creatinine-ad)