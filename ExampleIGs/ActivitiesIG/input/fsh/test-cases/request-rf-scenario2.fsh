Instance: request-rf-scenario2
InstanceOf: Task
Usage: #example
Description: "Example test case"
* contained = Inline-Instance-for-request-rf-scenario2
* instantiatesCanonical = Canonical(activity-example-reportflag-ad)
* status = #draft
* intent = #proposal
* code = $cpg-activity-type-cs#report-flag "Report a flag"
* for = Reference(rf-scenario2-patient)
* input
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