Instance: ep-scenario4-eoc
InstanceOf: EpisodeOfCare
Usage: #example
* extension[cpg-enrolledIn].valueCanonical = Canonical(activity-example-pathway-pd)
* status = #active
* diagnosis.condition = Reference(ep-scenario4-condition)
* patient = Reference(ep-scenario4-patient)