Instance: chf-scenario1-egfr
InstanceOf: Goal
Usage: #example
Description: "CHF Scenario One"
* extension
  * url = Canonical(cpg-goalFor)
  * valueCanonical = Canonical(chf-egfr-pd)
* lifecycleStatus = #active
* achievementStatus = $goal-achievement#improving
* description.text = "eGFR > 60 mol/mm/m2"
* subject = Reference(chf-scenario1-patient)
* target
  * measure = $chf-example-codes#egfr
  * detailQuantity = 60 'mol/mm/m2' "mol/mm/m2"
    * comparator = #>