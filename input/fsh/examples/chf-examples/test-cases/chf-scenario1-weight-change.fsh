Instance: chf-scenario1-weight-change
InstanceOf: Goal
Usage: #example
Description: "CHF Scenario One"
* extension
  * url = Canonical(cpg-goalFor)
  * valueCanonical = Canonical(chf-bodyweight-change-pd)
* lifecycleStatus = #active
* achievementStatus = $goal-achievement#improving
* description.text = "Body weight change 0.5-1.5 kg/day"
* subject = Reference(chf-scenario1-patient)
* target
  * measure = $chf-codes#body-weight-change
  * detailRange
    * low = 0.5 'kg/d' "kg/d"
    * high = 1.5 'kg/d' "kg/d"