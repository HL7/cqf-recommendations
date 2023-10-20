Instance: event-rf-scenario4
InstanceOf: cpg-reportflagtask
Usage: #example
Description: "Example test case"
* contained = flag
* instantiatesCanonical = Canonical(activity-example-reportflag-ad)
* status = #completed
* intent = #order
* code = $cpg-activity-type-cs#report-flag "Report a flag"
* for = Reference(rf-scenario4-patient)
* input
  * type = $cpg-activity-type-cs#report-flag "Report a flag"
  * valueReference = Reference(flag)
* output
  * type = $cpg-activity-type-cs#report-flag "Report a flag"
  * valueReference = Reference(rf-scenario4)

Instance: flag
InstanceOf: Flag
Usage: #inline
* status = #active
* category = $flag-category#admin "Administrative"
* code.text = "Flag"
* subject = Reference(rf-scenario4-patient)