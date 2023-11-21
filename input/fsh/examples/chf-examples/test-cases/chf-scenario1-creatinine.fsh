Instance: chf-scenario1-creatinine
InstanceOf: Goal
Usage: #example
Description: "CHF Scenario One"
* extension
  * url = Canonical(cpg-goalFor)
  * valueCanonical = Canonical(chf-creatinine-pd)
* lifecycleStatus = #active
* achievementStatus = $goal-achievement#improving
* description.text = "Creatinine < 1.2 mg/dL"
* subject = Reference(chf-scenario1-patient)
* target
  * measure = $loinc#39802-4
  * detailQuantity = 1.2 'mg/dL' "mg/dL"
    * comparator = #<