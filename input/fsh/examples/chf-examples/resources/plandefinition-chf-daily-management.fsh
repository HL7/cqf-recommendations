Instance: chf-daily-management
InstanceOf: CPGStrategyDefinition
Usage: #example
Title: "CHF Daily Management Strategy"
* insert CHFPlanDefinitionMetadata(chf-daily-management)
* insert PlanDefinitionPartOfExtension(chf-pathway)
* insert PlanDefinitionEnabledExtension
* name = "CHFDailyManagement"
* description = "Daily management strategy as part of a care pathway for patients with admitting diagnosis of congestive heart failure"
* type = $plan-definition-type#workflow-definition
* action[+]
  * title = "Weight"
  * description = "Measure weight daily"
  * code = $cpg-common-process-cs#diagnostic-testing
  * definitionCanonical = Canonical(chf-bodyweight-pd)
* action[+]
  * title = "Weight Change"
  * description = "Manage weight change"
  * code = $cpg-common-process-cs#diagnostic-testing
  * definitionCanonical = Canonical(chf-bodyweight-change-pd)
* action[+]
  * title = "Urine Output"
  * description = "Measure urine output daily"
  * code = $cpg-common-process-cs#diagnostic-testing
  * definitionCanonical = Canonical(chf-urine-out-pd)
* action[+]
  * title = "Net I/Os"
  * description = "Measure net intake/output daily"
  * code = $cpg-common-process-cs#diagnostic-testing
  * definitionCanonical = Canonical(chf-net-io-pd)