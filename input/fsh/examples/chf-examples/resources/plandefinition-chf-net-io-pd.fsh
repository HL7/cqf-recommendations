Instance: chf-net-io-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
Title: "CHF Net IO Recommendation"
* insert CHFPlanDefinitionMetadata(chf-net-io-pd)
* insert PlanDefinitionPartOfExtension(chf-daily-management)
* insert PlanDefinitionEnabledExtension
* name = "CHFNetIO"
* description = "Measure net intake/output daily"
* type = $plan-definition-type#eca-rule
* goal
  * description.text = "Net io target"
  * start = $sct#32485007 "Admission to hospital"
* action
  * id = "net-io"
  * title = "Net IOs"
  * description = "Measure net intake/output daily"
  * code = $cpg-common-process-cs#diagnostic-testing
  * trigger
    * type = #periodic
    * timingTiming.repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
  * definitionCanonical = Canonical(chf-net-io-ad)