Instance: chf-jvp-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
Title: "CHF Jugular Venous Pressure Recommendation"
* insert ExamplePlanDefinitionMetadata(chf-jvp-pd)
* insert PlanDefinitionPartOfExtension(chf-hypervolemia)
* insert PlanDefinitionEnabledExtension
* name = "CHFJVPPD"
* description = "Measure jugular venous pressure"
* type = $plan-definition-type#eca-rule
* goal
  * description.text = "JVP target"
  * start = $sct#32485007 "Admission to hospital"
* action
  * id = "jvp"
  * title = "JVP"
  * description = "Measure JVP daily"
  * code = $cpg-common-process-cs#diagnostic-testing
  * trigger
    * type = #periodic
    * timingTiming.repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
  * definitionCanonical = Canonical(chf-jvp-ad)