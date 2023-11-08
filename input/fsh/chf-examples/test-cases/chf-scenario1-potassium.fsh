Instance: chf-scenario1-potassium
InstanceOf: Goal
Usage: #example
Description: "CHF Scenario One"
* extension
  * url = Canonical(cpg-goalFor)
  * valueCanonical = Canonical(chf-potassium-pd)
* lifecycleStatus = #active
* achievementStatus = $goal-achievement#improving
* description.text = "Potassium 3.5-5.0 mEq/L"
* subject = Reference(chf-scenario1-patient)
* target
  * measure = $loinc#86919-8
  * detailRange
    * low = 3 'meq/L' "mEq/L"
    * high = 5 'meq/L' "mEq/L"