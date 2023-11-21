Instance: chf-egfr-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
Title: "CHF eGFR Recommendation"
* insert CHFPlanDefinitionMetadata(chf-egfr-pd)
* insert PlanDefinitionPartOfExtension(chf-hypervolemia)
* insert PlanDefinitionEnabledExtension
* name = "CHFEGFRPD"
* description = "Monitor eGFR"
* type = $plan-definition-type#eca-rule
* goal
  * description.text = "eGFR target"
  * start = $sct#32485007 "Admission to hospital"
* action
  * id = "egfr"
  * title = "eGFR"
  * description = "Monitor eGFR"
  * code = $cpg-common-process-cs#diagnostic-testing
  * trigger
    * type = #periodic
    * timingTiming.repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
  * definitionCanonical = Canonical(chf-egfr-ad)