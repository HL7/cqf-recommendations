CodeSystem: CPGCommonProcessCS
Id: cpg-common-process-cs
Title: "CPG Common Process Codes"
Description: "Common processes performed in providing guideline-based care, regardless of the specific guideline."
* insert CodeSystemMetadata(cpg-common-process)
* ^extension[+].url = $codesystem-sourceReference
* ^extension[=].valueUri = "http://www.aehin.org/Meetings/2013AeHINGeneralMeeting/AGM13Files3.aspx"
* ^extension[+].url = $codesystem-sourceReference
* ^extension[=].valueUri = "https://doi.org/10.1016/j.jbi.2008.05.012"
* #registration "Registration" "Identifying and recording the subject of care."
* #triage "Triage" "Performing basic triage to identify any signs that emergency care is required."
* #local-urgent-care "Local Urgent Care" "Providing local urgent care based on the outcome of a triage process."
* #history-and-physical "History and Physical" "Gathering clinical history and performing and recording observations regarding the patient's health (e.g. blood pressure, temperature, etc.)"
* #provide-counseling "Provide Counseling" "Informing the subject of care about their treatment options and about how their ongoing care should be managed between visits. This is also where treatment constents are obtained and where health education is provided."
* #diagnostic-testing "Conduct Diagnostic Tests" "Conducting diagnostic tests, including lab tests, collection of samples, and other diagnostic tests. Lab testing may be done locally (e.g. HIV quick test) or the samples may require lab order fulfillment workflow."
* #determine-diagnosis "Determine Diagnosis" "Using available information from the patient's history, current examinations, tests, and assessments to assist in developing a diagnosis."
* #guideline-based-care "Guideline-based Care" "Performing and recording observations, interventions, and treatment plans recommended by specific guidelines."
* #dispense-medications "Dispense Medications" "Administering medications, ordered by clinicians and dispensed by a pharmacy. Pharmacies may be local to the care facility or community-based, and involves supply chain transactions to support medication management."
* #emergency-care "Emergency Care" "Providing emergency care in trauma cases or as part of guildeline-based care escalation."
* #actue-tertiary-care "Acute/Tertiary Care" "Providing acute or tertiary care, either as an escalation from emergency care, or from primary care due to guideline-based referral patterns."
* #charge-for-service "Charge for Service" "Charging for services rendered, regardless of the mechanism of coverage."
* #discharge-referral-of-patient "Discharge/Referral of Patient" "Discharging or referring a patient, including the movement of patients through levels of care delivery (e.g. acute to primary, primary to community, etc.) or the enrollment of patients in guideline-based care programs (e.g. HIV, maternal, diabetes, injury rehabilitiation, etc.)."
* #record-and-report "Record and Report" "Recording and reporting patient-specific care management information which may be aggregated to develop reportable system management indicators at the priovider, facility, district, national, and international levels."
* #monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient" "Monitoring and tracking progress for each patient based on guideline recommendations."
* #alerts-reminders-education "Alerts Reminders Education" "Providing alerts, reminders, and education to patients, providers, and health system managers."