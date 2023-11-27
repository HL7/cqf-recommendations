Instance: chf-scenario1-o2-sat-goal
InstanceOf: Goal
Usage: #example
Description: "CHF Scenario One"
* extension
  * url = Canonical(cpg-goalFor)
  * valueCanonical = Canonical(chf-o2-sat-pd)
* lifecycleStatus = #active
* achievementStatus = $goal-achievement#improving
* description.text = "Oxygen saturation > 94% SaO2"
* subject = Reference(chf-scenario1-patient)
* target
  * measure = $loinc#2708-6
  * detailQuantity = 94 '%' "%"
    * comparator = #>