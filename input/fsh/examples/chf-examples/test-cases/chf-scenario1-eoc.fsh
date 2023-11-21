Instance: chf-scenario1-eoc
InstanceOf: cpg-case
Usage: #example
Description: "CHF Scenario One"
* extension
  * url = Canonical(cpg-enrolledIn)
  * valueCanonical = Canonical(chf-pathway)
* status = #active
* diagnosis.condition = Reference(chf-scenario1-condition)
* patient = Reference(chf-scenario1-patient)
* period.start = "2019-01-31T05:03:00Z"