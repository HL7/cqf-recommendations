Instance: cc-cpg-activity-referral-nephrology
InstanceOf: CPGComputableActivityDefinition
Usage: #example
Title: "CKD Referral Nephrology"
* insert ExampleActivityDefinitionMetadata(cc-cpg-activity-referral-nephrology)
* name = "ReferralNephrology"
* description = "Referral: Nephrology; History: [add diagnosis, symptom(s)]; Question: [add reason for referral]"
* relatedArtifact
  * type = #justification
  * display =
  """Refer to nephrologist for co-management of treatment plan in cases of:\n\n\n\tUnclear etiology of kidney disease\n\n\n\n\tRapid progression of disease (GFR decline greater than 5 mL/minute/1.73 m&sup2;/year)\n\n\n\n\tAcute kidney injury or abrupt sustained fall in GFR\n\n\n\n\tGFR less than 30 mL/minute/1.73 m&sup2; (GFR categories G4-G5) to prepare for renal replacement therapy\n\n\n\n\tConsistent finding of significant albuminuria (albumin/creatinine ratio of 300 mg/g or more)\n\n\n\n\tHypertension resistant to treatment with 4 or more antihypertensive agents\n\n\n\n\tDifficulty in decreasing the level of albuminuria despite institution of ACE inhibitor or angiotensin II receptor blocker therapy\n\n\n\n\tPersistent electrolyte abnormalities, including hyperkalemia or high serum phosphate\n\n\n\n\tRecurrent or extensive nephrolithiasis\n\n\n\n\tHereditary kidney disease\n\n\n&nbsp;\n\nNephrologist involvement is recommended when the cause of chronic kidney disease is not clear\n\n\n\tRenal biopsy may be performed to determine the cause as well as to predict disease progression and response to therapy"""
  * citation = "Chronic Kidney Disease Clinical Overview. ClinicalKey. Source"
  * url = $ckd-clinical-overview-11
* kind = #ServiceRequest
* code = $sct#306286007 "Referral to nephrologist (procedure)"
  * text = "Referral to nephrologist"
* participant.type = #practitioner
* timingTiming.event.extension
  * url = Canonical(cqf-expression)
  * valueExpression
    * language = #text/cql
    * expression = "Now()"