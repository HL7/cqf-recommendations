Instance: chf-scenario1-lasix-iv-goal
InstanceOf: Goal
Usage: #example
Description: "CHF Scenario One"
* extension
  * url = Canonical(cpg-goalFor)
  * valueCanonical = Canonical(chf-lasix)
* lifecycleStatus = #active
* achievementStatus = $goal-achievement#improving
* description.text = "Transition to PO"
* subject = Reference(chf-scenario1-patient)
* target.measure = $chf-example-codes#lasix-iv