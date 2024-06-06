Instance: chf-urine-out-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
Title: "CHF Urine Out Recommendation"
* insert ExamplePlanDefinitionMetadata(chf-urine-out-pd)
* insert PlanDefinitionPartOfExtension(chf-daily-management)
* insert PlanDefinitionEnabledExtension
* name = "CHFUrineOut"
* description = "Measure urine output daily"
* type = $plan-definition-type#eca-rule
* goal
  * description.text = "Urine output target"
  * start = $sct#32485007 "Admission to hospital"
* action[+]
  * id = "urine-out"
  * title = "Urine Out"
  * description = "Measure urine output daily"
  * code = $cpg-common-process-cs#diagnostic-testing
  * trigger
    * type = #periodic
    * timingTiming.repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
  * definitionCanonical = Canonical(chf-urine-out-ad)
* action[+]
  * title = "Report Urine Out"
  * description = "Report urine output metric daily"
  * code = $cpg-common-process-cs#diagnostic-testing
  * relatedAction
    * actionId = "urine-out"
    * relationship = #after-end
  * definitionCanonical = Canonical(chf-report-urine-out)