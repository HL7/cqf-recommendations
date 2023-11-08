Instance: chf-scenario1-careplan
InstanceOf: cpg-careplan
Usage: #example
Description: "CHF Scenario One"
* extension
  * url = Canonical(cpg-planFor)
  * valueReference = Reference(chf-scenario1-eoc)
* instantiatesCanonical = Canonical(chf-pathway)
* status = #active
* intent = #plan
* category.text = "Heart Failure Care Pathway"
* title = "Heart Failure Care Pathway"
* description = "Care Pathway for treatment of congestive heart failure"
* subject = Reference(chf-scenario1-patient)
* encounter = Reference(chf-scenario1-encounter)
* period.start = "2019-01-31T07:00:00Z"
* created = "2019-01-31T07:00:00Z"
* careTeam = Reference(chf-scenario1-careteam)
* addresses = Reference(chf-scenario1-condition)
* goal[+] = Reference(chf-scenario1-weight)
* goal[+] = Reference(chf-scenario1-weight-change)
* goal[+] = Reference(chf-scenario1-urine-out)
* goal[+] = Reference(chf-scenario1-net-io)
* goal[+] = Reference(chf-scenario1-jvp-goal)
* goal[+] = Reference(chf-scenario1-o2-sat-goal)
* goal[+] = Reference(chf-scenario1-potassium)
* goal[+] = Reference(chf-scenario1-creatinine)
* goal[+] = Reference(chf-scenario1-egfr)
* goal[+] = Reference(chf-scenario1-lasix-iv-goal)
* goal[+] = Reference(chf-scenario1-lasix-po-goal)
* goal[+] = Reference(chf-scenario1-cardiology-consultation-goal)
* activity[+].reference = Reference(chf-scenario1-daily-management)
* activity[+].reference = Reference(chf-scenario1-hypervolemia)