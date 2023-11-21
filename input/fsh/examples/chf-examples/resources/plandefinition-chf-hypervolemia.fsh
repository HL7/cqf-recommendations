Instance: chf-hypervolemia
InstanceOf: CPGStrategyDefinition
Usage: #example
Title: "CHF Hypervolemia Strategy"
* insert CHFPlanDefinitionMetadata(chf-hypervolemia)
* insert PlanDefinitionPartOfExtension(chf-pathway)
* insert PlanDefinitionEnabledExtension
* name = "CHFHypervolemia"
* description = "Hypervolemia strategy as part of a care pathway for patients with admitting diagnosis of congestive heart failure"
* type = $plan-definition-type#workflow-definition
* action[+]
  * title = "JVP"
  * description = "Measure JVP daily"
  * code = $cpg-common-process-cs#diagnostic-testing
  * definitionCanonical = Canonical(chf-jvp-pd)
* action[+]
  * title = "O2 Sat"
  * description = "Monitor O2 Sat"
  * code = $cpg-common-process-cs#diagnostic-testing
  * definitionCanonical = Canonical(chf-o2-sat-pd)
* action[+]
  * title = "Potassium"
  * description = "Monitor Potassium"
  * code = $cpg-common-process-cs#diagnostic-testing
  * definitionCanonical = Canonical(chf-potassium-pd)
* action[+]
  * title = "Creatinine"
  * description = "Monitor Creatinine"
  * code = $cpg-common-process-cs#diagnostic-testing
  * definitionCanonical = Canonical(chf-creatinine-pd)
* action[+]
  * title = "eGFR"
  * description = "Monitor eGFR"
  * code = $cpg-common-process-cs#diagnostic-testing
  * definitionCanonical = Canonical(chf-egfr-pd)
* action[+]
  * title = "LASIX"
  * description = "LASIX"
  * code = $cpg-common-process-cs#guideline-based-care
  * definitionCanonical = Canonical(chf-lasix)
* action[+]
  * title = "Cardiology Consultation"
  * description = "Cardiology Consultation within 24 hours"
  * code = $cpg-common-process-cs#guideline-based-care
  * definitionCanonical = Canonical(chf-cardiology-consultation-pd)