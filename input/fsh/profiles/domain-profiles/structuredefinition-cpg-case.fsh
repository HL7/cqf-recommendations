Profile: CPGCase
Parent: EpisodeOfCare
Id: cpg-case
Description: "CPG case represents a specific case of a patient enrolled in a particular pathway. The enrollment may have been automatic, prompted, or manual."
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2019-06-06"
* ^publisher = "Health Level Seven, Inc. - CDS WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/DSS"
* ^jurisdiction = $m49.htm#001 "World"
* . ^mustSupport = false
* extension contains $cpg-enrolledIn named enrolledIn 0..* MS
* identifier ^mustSupport = false
* type from $episodeofcare-type (preferred)
* type ^mustSupport = false
* type ^binding.description = "Expresses the type of an episode of care"
* diagnosis 1..*
* diagnosis ^mustSupport = false
// * diagnosis.condition only Reference($cpg-condition)
* diagnosis.condition ^mustSupport = false
* patient only Reference($cpg-patient)
* patient ^mustSupport = false
* period MS