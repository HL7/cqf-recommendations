Instance: chf-o2-sat-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
Title: "CHF Oxygen Saturation Recommendation"
* insert ExamplePlanDefinitionMetadata(chf-o2-sat-pd)
* insert PlanDefinitionPartOfExtension(chf-hypervolemia)
* insert PlanDefinitionEnabledExtension
* name = "CHFO2SatPD"
* description = "Monitor oxygen saturation"
* type = $plan-definition-type#eca-rule
* goal
  * description.text = "Oxygen saturation target"
  * start = $sct#32485007 "Admission to hospital"
* action
  * id = "o2-sat"
  * title = "O2 Sat"
  * description = "Monitor oxygen saturation"
  * code = $cpg-common-process-cs#diagnostic-testing
  * trigger
    * type = #periodic
    * timingTiming.repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
  * definitionCanonical = Canonical(chf-o2-sat-ad)