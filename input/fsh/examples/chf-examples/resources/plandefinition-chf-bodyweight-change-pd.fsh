Instance: chf-bodyweight-change-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
Title: "CHF Body Weight Change Recommendation"
* insert CHFPlanDefinitionMetadata(chf-bodyweight-change-pd)
* insert PlanDefinitionPartOfExtension(chf-daily-management)
* insert PlanDefinitionEnabledExtension
* name = "CHFBodyWeightChange"
* description = "Measure body weight change daily"
* type = $plan-definition-type#eca-rule
* goal
  * description.text = "Weight change target"
  * start = $sct#32485007 "Admission to hospital"
* action[+]
  * id = "weight-change"
  * title = "Weight change"
  * description = "Measure weight change daily"
  * code = $cpg-common-process-cs#diagnostic-testing
  * trigger
    * type = #periodic
    * timingTiming.repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
  * definitionCanonical = Canonical(chf-bodyweight-change-ad)
* action[+]
  * title = "Report Weight Change"
  * description = "Report weight change metric daily"
  * code = $cpg-common-process-cs#diagnostic-testing
  * relatedAction
    * actionId = "weight-change"
    * relationship = #after-end
  * definitionCanonical = Canonical(chf-report-bodyweight-change)