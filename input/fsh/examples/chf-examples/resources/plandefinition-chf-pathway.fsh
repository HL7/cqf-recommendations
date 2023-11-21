Instance: chf-pathway
InstanceOf: CPGPathwayDefinition
Usage: #example
Title: "Congestive Heart Failure Care Pathway"
* insert CHFPlanDefinitionMetadata(chf-pathway)
* insert PlanDefinitionEnabledExtension
* name = "CHFPathway"
* description = "Treatment and management care pathway for patients with admitting diagnosis of congestive heart failure"
* type = $plan-definition-type#clinical-protocol
* action[+]
  * title = "CHF Daily Management"
  * description = "Daily Management strategy for Congestive Heart Failure"
  * code = $cpg-common-process-cs#guideline-based-care
  * definitionCanonical = Canonical(chf-daily-management)
* action[+]
  * title = "CHF Hypervolemia"
  * description = "Hypervolemia strategy for Congestive Heart Failure"
  * code = $cpg-common-process-cs#guideline-based-care
  * definitionCanonical = Canonical(chf-hypervolemia)