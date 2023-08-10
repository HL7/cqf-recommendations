Instance: cpg-common-pathway
InstanceOf: PlanDefinition
Usage: #example
Title: "CPG Common Pathway"
* insert PlanDefinitionMetadata(cpg-common-pathway)
* identifier
  * use = #official
  * value = "CPG_Common_Pathway"
* name = "CPG_Common_Pathway"
* type = $plan-definition-type#clinical-protocol "Clinical Protocol"
* action[+]
  * id = "001"
  * title = "Registration"
  * description = "Identifying and recording the subject of care."
  * code = $cpg-common-process-codesystem#registration "Registration"
* action[+]
  * id = "002"
  * title = "Triage"
  * description = "Performing basic triage to identify any signs that emergency care is required."
  * code = $cpg-common-process-codesystem#triage "Triage"
* action[+]
  * id = "003"
  * title = "Local Urgent Care"
  * description = "Providing local urgent care based on the outcome of a triage process."
  * code = $cpg-common-process-codesystem#local-urgent-care "Local Urgent Care"
* action[+]
  * id = "004"
  * title = "History and Phyiscal"
  * description = "Gathering clinical history and performing and recording observations regarding the patient's health (e.g. blood pressure, temperature, etc.)"
  * code = $cpg-common-process-codesystem#history-and-physical "History and Physical"
* action[+]
  * id = "005"
  * title = "Provide Counseling"
  * description = "Informing the subject of care about their treatment options and about how their ongoing care should be managed between visits. This is also where treatment constents are obtained and where health education is provided."
  * code = $cpg-common-process-codesystem#provide-counseling "Provide Counseling"
* action[+]
  * id = "006"
  * title = "Diagnostic Testing"
  * description = "Conducting diagnostic tests, including lab tests, collection of samples, and other diagnostic tests. Lab testing may be done locally (e.g. HIV quick test) or the samples may require lab order fulfillment workflow."
  * code = $cpg-common-process-codesystem#diagnostic-testing "Conduct Diagnostic Tests"
* action[+]
  * id = "007"
  * title = "Determine Diagnosis"
  * description = "Using available information from the patient's history, current examinations, tests, and assessments to assist in developing a diagnosis."
  * code = $cpg-common-process-codesystem#determine-diagnosis "Determine Diagnosis"
* action[+]
  * id = "008"
  * title = "Guideline-based Care"
  * description = "Performing and recording observations, interventions, and treatment plans recommended by specific guidelines."
  * code = $cpg-common-process-codesystem#guideline-based-care "Guideline-based Care"
* action[+]
  * id = "009"
  * title = "Dispense Medications"
  * description = "Administering medications, ordered by clinicians and dispensed by a pharmacy. Pharmacies may be local to the care facility or community-based, and involves supply chain transactions to support medication management."
  * code = $cpg-common-process-codesystem#dispense-medications "Dispense Medications"
* action[+]
  * id = "010"
  * title = "Emergency Care"
  * description = "Providing emergency care in trauma cases or as part of guildeline-based care escalation."
  * code = $cpg-common-process-codesystem#emergency-care "Emergency Care"
* action[+]
  * id = "011"
  * title = "Acute/Tertiary Care"
  * description = "Providing acute or tertiary care, either as an escalation from emergency care, or from primary care due to guideline-based referral patterns."
  * code = $cpg-common-process-codesystem#actue-tertiary-care "Acute/Tertiary Care"
* action[+]
  * id = "012"
  * title = "Charge for Service"
  * description = "Charging for services rendered, regardless of the mechanism of coverage."
  * code = $cpg-common-process-codesystem#charge-for-service "Charge for Service"
* action[+]
  * id = "013"
  * title = "Discharge/Referral of Patient"
  * description = "Discharging or referring a patient, including the movement of patients through levels of care delivery (e.g. acute to primary, primary to community, etc.) or the enrollment of patients in guideline-based care programs (e.g. HIV, maternal, diabetes, injury rehabilitiation, etc.)."
  * code = $cpg-common-process-codesystem#discharge-referral-of-patient "Discharge/Referral of Patient"
* action[+]
  * id = "014"
  * title = "Record and Report"
  * description = "Recording and reporting patient-specific care management information which may be aggregated to develop reportable system management indicators at the priovider, facility, district, national, and international levels."
  * code = $cpg-common-process-codesystem#record-and-report "Record and Report"
* action[+]
  * id = "015"
  * title = "Monitor and Follow-up of Patient"
  * description = "Monitoring and tracking progress for each patient based on guideline recommendations."
  * code = $cpg-common-process-codesystem#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"
* action[+]
  * id = "016"
  * title = "Alerts Reminders Education"
  * description = "Providing alerts, reminders, and education to patients, providers, and health system managers."
  * code = $cpg-common-process-codesystem#alerts-reminders-education "Alerts Reminders Education"