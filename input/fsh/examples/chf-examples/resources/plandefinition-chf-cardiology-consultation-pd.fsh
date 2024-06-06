Instance: chf-cardiology-consultation-pd
InstanceOf: CPGRecommendationDefinition
Usage: #example
Title: "CHF Cardiology Consultation Recommendation"
* insert ExamplePlanDefinitionMetadata(chf-cardiology-consultation-pd)
* insert PlanDefinitionPartOfExtension(chf-hypervolemia)
* insert PlanDefinitionEnabledExtension
* url = Canonical(chf-cardiology-consultation-pd)
* name = "CHFCardiologyConsultation"
* description = "Cardiology consultation within 24 hrs"
* type = $plan-definition-type#eca-rule
* goal
  * description.text = "Cardiology Consultation within 24 hours"
  * start = $sct#32485007 "Admission to hospital"
* action
  * id = "cardiology-consultation"
  * title = "Cardiology Consultation"
  * description = "Cardiology Consultation"
  * code = $cpg-common-process-cs#guideline-based-care
  * definitionCanonical = Canonical(chf-cardiology-consultation)