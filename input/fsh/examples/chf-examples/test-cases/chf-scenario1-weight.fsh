Instance: chf-scenario1-weight
InstanceOf: cpg-goal
Usage: #example
Description: "CHF Scenario One"
* extension
  * url = Canonical(cpg-goalFor)
  * valueCanonical = Canonical(chf-bodyweight-pd)
* lifecycleStatus = #active
* achievementStatus = $goal-achievement#improving
* description.text = "Body weight 92kg"
* subject = Reference(chf-scenario1-patient)
* target
  * measure = $loinc#29463-7
  * detailQuantity = 92 'kg' "kg"