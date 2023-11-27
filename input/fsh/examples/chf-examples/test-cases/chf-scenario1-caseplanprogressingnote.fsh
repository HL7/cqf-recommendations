Instance: chf-scenario1-caseplanprogressingnote
InstanceOf: CPGCasePlanProgressingNote
Usage: #example
Description: "CHF Scenario One"
* extension[+]
  * url = Canonical(workflow-instantiatesCanonical)
  * valueCanonical = Canonical(chf-caseplansummarydefinition)
* extension[+]
  * url = Canonical(cpg-summaryFor)
  * valueReference = Reference(chf-scenario1-eoc)
* status = #final
* type = $loinc#11506-3 "Progress note"
* category = $loinc#11503-0 "Medical records"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* date = "2019-02-03"
* author = Reference(chf-scenario1-practitionerrole)
* title = "Congestive Heart Failure Case/Plan Progressing Note"
* attester
  * mode = #professional
  * time = "2019-02-03"
  * party = Reference(chf-scenario1-practitionerrole)
* custodian = Reference(chf-scenario1-organization)
* event
  * code = $sct#42343007 "Congestive heart failure (disorder)"
  * period.start = "2019-01-31T05:03:00Z"
  * detail = Reference(chf-scenario1-eoc)
* section[+]
  * title = "Clinical Impression"
  * code = $loinc#51848-0
  * entry = Reference(chf-scenario1-clinicalimpression)
* section[+]
  * title = "Pathway Events"
  * code.text = "Pathway Events"
  * entry = Reference(chf-scenario1-encounter)
  * section[+]
    * title = "Weight"
    * code.text = "Weight"
    * entry[+] = Reference(chf-scenario1-bodyweight1-observation)
    * entry[+] = Reference(chf-scenario1-bodyweight2-observation)
    * entry[+] = Reference(chf-scenario1-bodyweight3-observation)
    * entry[+] = Reference(chf-scenario1-bodyweight4-observation)
    * entry[+] = Reference(chf-scenario1-bodyweight1)
    * entry[+] = Reference(chf-scenario1-bodyweight2)
    * entry[+] = Reference(chf-scenario1-bodyweight3)
    * entry[+] = Reference(chf-scenario1-bodyweight4)
  * section[+]
    * title = "Weight Change"
    * code.text = "Weight Change"
    * entry[+] = Reference(chf-scenario1-bodyweight-change1-observation)
    * entry[+] = Reference(chf-scenario1-bodyweight-change2-observation)
    * entry[+] = Reference(chf-scenario1-bodyweight-change3-observation)
    * entry[+] = Reference(chf-scenario1-bodyweight-change1)
    * entry[+] = Reference(chf-scenario1-bodyweight-change2)
    * entry[+] = Reference(chf-scenario1-bodyweight-change3)
  * section[+]
    * title = "Urine Out"
    * code.text = "Urine Out"
    * entry[+] = Reference(chf-scenario1-urineout3-observation)
    * entry[+] = Reference(chf-scenario1-urineout3)
  * section[+]
    * title = "Net IO's"
    * code.text = "Net IO's"
    * entry = Reference(chf-scenario1-netio3)
  * section[+]
    * title = "JVP"
    * code.text = "JVP"
    * entry[+] = Reference(chf-scenario1-jvp1)
    * entry[+] = Reference(chf-scenario1-jvp2)
    * entry[+] = Reference(chf-scenario1-jvp3)
    * entry[+] = Reference(chf-scenario1-jvp4)
    * entry[+] = Reference(chf-scenario1-jvp5)
    * entry[+] = Reference(chf-scenario1-jvp)
  * section[+]
    * title = "O2 Sat"
    * code.text = "O2 Sat"
    * entry[+] = Reference(chf-scenario1-o2sat1)
    * entry[+] = Reference(chf-scenario1-o2sat2)
    * entry[+] = Reference(chf-scenario1-o2-sat)
  * section[+]
    * title = "Potassium"
    * code.text = "Potassium"
    * entry = Reference(chf-scenario1-potassium1)
  * section[+]
    * title = "Creatinine"
    * code.text = "Creatinine"
    * entry = Reference(chf-scenario1-creatinine1)
  * section[+]
    * title = "eGFR"
    * code.text = "eGFR"
    * entry = Reference(chf-scenario1-egfr1)
  * section[+]
    * title = "LASIX IV"
    * code.text = "LASIX IV"
    * entry[+] = Reference(chf-scenario1-lasix-iv)
    * entry[+] = Reference(chf-scenario1-stop-lasix-iv)
    * entry[+] = Reference(chf-scenario1-lasix-po-mr)