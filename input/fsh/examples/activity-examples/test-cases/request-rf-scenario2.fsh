Instance: request-rf-scenario2
InstanceOf: cpg-reportflagtask
Usage: #example
Description: "Example test case - Report Flag - Scenario 2 - Report Flag Task"
* meta.profile = Canonical(CPGTask)
* contained = Inline-Instance-for-request-rf-scenario2
* instantiatesCanonical = Canonical(activity-example-reportflag-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#report-flag "Report a flag"
* for = Reference(rf-scenario2-patient)
* input[flag]
  * type = $cpg-activity-type-cs#report-flag "Report a flag"
  * valueReference = Reference(flag)

Instance: Inline-Instance-for-request-rf-scenario2
InstanceOf: Flag
Usage: #inline
* id = "flag"
* status = #active
* category = $flag-category#admin "Administrative"
* code.text = "Flag"
* subject = Reference(rf-scenario2-patient)