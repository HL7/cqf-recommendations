Profile: CPGCaseSummary
Parent: Composition
Id: cpg-casesummary
Description: "CPG Case Summary is the set of case features and feature groups that completely represent the case data scoped by the clinical practice guideline. This expresses the complete patient state at any given point in time."
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^date = "2019-06-06"
* ^publisher = "Health Level Seven, Inc. - CDS WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/DSS"
* ^jurisdiction = $m49.htm#001 "World"
* . ^mustSupport = false
* extension contains
    $workflow-instantiatesCanonical named instantiatesCanonical 0..1 MS and
    $cpg-summaryFor named summaryFor 0..1 MS
* extension[instantiatesCanonical] ^short = "Source"
* extension[instantiatesCanonical] ^definition = "A link back to the definition that produced this summary. Typically a CPGCaseSummaryDefinition."
* extension[summaryFor] ^short = "Which case?"
* extension[summaryFor] ^definition = "Specifies which case (episode of care) this summary is for."
* identifier MS
* status MS
* type MS
* category MS
* subject only Reference($cpg-patient)
* subject MS
// * encounter only Reference($cpg-encounter)
* encounter MS
* date MS
* author only Reference($cpg-practitioner or $cpg-practitionerrole)
* author MS