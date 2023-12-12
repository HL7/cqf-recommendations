Instance: chf-bodyweight-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
Title: "CHF Body Weight Recommendation"
* insert ExamplePlanDefinitionMetadata(chf-bodyweight-pd)
* insert PlanDefinitionPartOfExtension(chf-daily-management)
* insert PlanDefinitionEnabledExtension
* name = "CHFBodyWeight"
* description = "Measure body weight daily"
* type = $plan-definition-type#eca-rule
* goal
  * description.text = "Weight target"
  * start = $sct#32485007 "Admission to hospital"
* action[+]
  * id = "weight"
  * title = "Weight"
  * description = "Measure weight daily"
  * code = $cpg-common-process-cs#diagnostic-testing
  * trigger
    * type = #periodic
    * timingTiming.repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
  * definitionCanonical = Canonical(chf-bodyweight-ad)
* action[+]
  * title = "Report Weight"
  * description = "Report weight metric daily"
  * code = $cpg-common-process-cs#diagnostic-testing
  * relatedAction
    * actionId = "weight"
    * relationship = #after-end
  * definitionCanonical = Canonical(chf-report-bodyweight)