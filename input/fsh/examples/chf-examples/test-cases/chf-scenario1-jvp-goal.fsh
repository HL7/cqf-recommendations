Instance: chf-scenario1-jvp-goal
InstanceOf: Goal
Usage: #example
Description: "CHF Scenario One"
* extension
  * url = Canonical(cpg-goalFor)
  * valueCanonical = Canonical(chf-jvp-pd)
* lifecycleStatus = #active
* achievementStatus = $goal-achievement#improving
* description.text = "Jugular venous pressure < 8.0 cmH2O"
* subject = Reference(chf-scenario1-patient)
* target
  * measure = $chf-example-codes#jvp
  * detailQuantity = 8 'cm[H2O]' "cmH2O"
    * comparator = #<