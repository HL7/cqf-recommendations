Instance: cc-cpg-plan-ckd
InstanceOf: CPGOrderSetDefinition
Usage: #example
Title: "CKD Ambulatory Plan Definition"
* insert ExamplePlanDefinitionMetadata(cc-cpg-plan-ckd)
* name = "ChronicKidneyDiseaseAmbulatory"
* description = "Chronic Kidney Disease - Ambulatory"
* type = $plan-definition-type#order-set "Order Set"
* copyright = "Copyright © Elsevier, and others."
* useContext
  * code = $usage-context-type#focus "Clinical Focus"
  * valueCodeableConcept = $sct#709044004 "Chronic kidney disease (disorder)"
* topic = $definition-topic-cs#treatment "Treatment"
  * text = "Treatment"
* relatedArtifact
  * type = #justification
  * display = """SYNOPSIS - Chronic Kidney Disease\n\n\n\t\n\tKEY POINTS\n\n\t\n\t\tDecline in function of the kidney characterized by at least 3 months of reduced GFR (less than 60 mL/minute/ 1.73 m&sup2;) or at least 3 months of structural or functional kidney damage\n\t\tAssessment of both GFR and albuminuria is necessary to diagnose chronic kidney disease and monitor disease progression\n\t\tGFR is most commonly estimated through measuring serum creatinine and the use of GFR estimating equations, either the Modification of Diet in Renal Disease Study equation or the Chronic Kidney Disease Epidemiology Collaboration equation\n\t\tAlbuminuria is measured by urine albumin/creatinine ratio; greater than 30 mg/g indicates albuminuria\n\t\tChronic kidney disease is commonly associated with hypertension, diabetes, and cardiovascular disease\n\t\tFirst line therapy includes ACE inhibitors and/or angiotensin II receptor blockers to reduce albuminuria and hypertension\n\t\tIf left untreated, chronic kidney disease can progress to end-stage renal disease requiring dialysis or renal transplant\n\t\t\n\t\t\tSymptoms of end-stage renal disease (eg, pruritus, refractory electrolyte imbalances, metabolic acidosis, severe nausea, neurologic impairments) typically occur when GFR is 5 to 10 mL/minute/1.73 m&sup2;\n\t\t\n\t\t\n\t\tCarefully monitor electrolyte levels, hemoglobin, parathyroid hormone levels, and sodium bicarbonate levels to detect complications of chronic kidney disease, including cardiovascular disease, anemia, bone mineral disease, and metabolic acidosis\n\t\n\t\n\n\n\n\t\n\tURGENT ACTION\n\n\t\n\t\tHyperkalemia may require urgent treatment in patients being treated for chronic kidney disease\n\t\t\n\t\t\tUrgent treatment consists of calcium chloride or calcium gluconate and regimens of sodium bicarbonate, glucose and insulin, or nebulized albuterol\n\t\t\n\t\t\n\t\n\t\n\n\n\n\t\n\tPITFALLS\n\n\t\n\t\tEarly stages are often asymptomatic, causing chronic kidney disease to be untreated, leading to further progression of kidney damage and worse prognosis"""
  * citation = "Chronic Kidney Disease Clinical Overview. ClinicalKey. Source"
  * url = $ckd-clinical-overview-1
* action[+]
  * id = "cc-cpg-activity-referral-nephrology"
  * title = "Referrals"
  * groupingBehavior = #visual-group
  * action[+]
    * id = "34387224"
    * title = "Referral: Nephrology; History: [add diagnosis, symptom(s)]; Question: [add reason for referral]"
    * description = "Referrals"
    * requiredBehavior = #could
    * precheckBehavior = #no
    * definitionCanonical = Canonical(cc-cpg-activity-referral-nephrology)
  * action[+]
    * id = "cc-cpg-activity-referral-dietition"
    * title = "Referral: Dietitian; History: chronic kidney disease; Question: [add reason for referral]"
    * description = "Referrals"
    * requiredBehavior = #could
    * precheckBehavior = #no
    * definitionCanonical = Canonical(cc-cpg-activity-referral-dietitian)