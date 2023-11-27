Instance: chf-scenario1-cardiology-consultation-goal
InstanceOf: Goal
Usage: #example
Description: "CHF Scenario One"
* extension
  * url = Canonical(cpg-goalFor)
  * valueCanonical = Canonical(chf-cardiology-consultation-pd)
* lifecycleStatus = #active
* achievementStatus = $goal-achievement#improving
* description.text = "Cardiology Consultation Within 24 Hours"
* subject = Reference(chf-scenario1-patient)
* target.measure = $chf-codes#cardiology-consultation