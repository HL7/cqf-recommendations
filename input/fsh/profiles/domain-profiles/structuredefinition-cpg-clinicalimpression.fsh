Profile: CPGClinicalImpression
Parent: ClinicalImpression
Id: cpg-clinicalimpression
Description: "CPG Clinical Impression captures clinician judgement at any particular point, and related to the case features and pathway, strategies, and recommendations."
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2019-06-06"
* ^publisher = "Health Level Seven, Inc. - CDS WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/DSS"
* ^jurisdiction = $m49.htm#001 "World"
* . ^comment = "This assessment is intended to capture, among other things, clinician reasoning and rationale for following or not following a particular recommendation, as well as reasoning about diagnoses, and documenting judgements about patient care. To the extent possible, this should support capturing the rationale in a structured way so that it can be used to augment automated support as much as possible."
* . ^mustSupport = false
* extension contains $cpg-impressionFor named impressionFor 0..1 MS
* identifier MS
* status MS
* code MS
* description MS
* subject only Reference($cpg-patient)
* subject MS
// * encounter only Reference($cpg-encounter)
* encounter MS
* effective[x] MS
* date MS
* assessor only Reference($cpg-practitioner or $cpg-practitionerrole)
* assessor MS
* protocol MS