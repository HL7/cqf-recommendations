Instance: chf-scenario1-casesummary
InstanceOf: CPGCaseSummary
Usage: #example
Description: "CHF Scenario One"
* extension[+]
  * url = Canonical(cpg-generatedFrom)
  * valueCanonical = Canonical(chf-casesummarydefinition)
* extension[+]
  * url = Canonical(cpg-summaryFor)
  * valueReference = Reference(chf-scenario1-eoc)
* status = #final
* type = $loinc#11503-0 "Medical records"
* category = $loinc#11503-0 "Medical records"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* date = "2019-02-03"
* author = Reference(chf-scenario1-practitionerrole)
* title = "Congestive Heart Failure Case Summary"
* attester
  * mode = #professional
  * time = "2019-02-03"
  * party = Reference(chf-scenario1-practitionerrole)
* custodian = Reference(chf-scenario1-organization)
* event
  * code = $sct#42343007 "Congestive heart failure (disorder)"
  * period.start = "2019-01-31T05:03:00Z"
  * detail = Reference(chf-scenario1-eoc)
* section
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
    * entry = Reference(chf-scenario1-net-io)
  * section[+]
    * title = "JVP"
    * code.text = "JVP"
    * entry[+] = Reference(chf-scenario1-jvp1)
    * entry[+] = Reference(chf-scenario1-jvp2)
    * entry[+] = Reference(chf-scenario1-jvp3)
    * entry[+] = Reference(chf-scenario1-jvp4)
    * entry[+] = Reference(chf-scenario1-jvp5)
  * section[+]
    * title = "O2 Sat"
    * code.text = "O2 Sat"
    * entry[+] = Reference(chf-scenario1-o2sat1)
    * entry[+] = Reference(chf-scenario1-o2sat2)
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
    * entry = Reference(chf-scenario1-lasix-iv)