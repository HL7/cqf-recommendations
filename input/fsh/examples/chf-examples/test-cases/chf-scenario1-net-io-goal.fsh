Instance: chf-scenario1-net-io-goal
InstanceOf: Goal
Usage: #example
Description: "CHF Scenario One"
* extension
  * url = Canonical(cpg-goalFor)
  * valueCanonical = Canonical(chf-net-io-pd)
* lifecycleStatus = #active
* achievementStatus = $goal-achievement#improving
* description.text = "Net intake/output -1.5 L/day"
* subject = Reference(chf-scenario1-patient)
* target
  * measure = $chf-example-codes#net-intake-output
  * detailQuantity = -1.5 'L/d' "L/day"