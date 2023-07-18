Profile: CPGCasePlanProgressingNote
Parent: $cpg-caseplansummary
Id: cpg-caseplanprogressingnote
Description: "CPG Case Plan Progressing Note combines relevant case features and feature groups with proposals, plans, and clinical impressions to provide a means to document patient progression with respect to a pathway in the context of a computable clinical practice guideline"
* ^status = #draft
* ^experimental = false
* ^date = "2019-06-06"
* ^publisher = "Health Level Seven, Inc. - CDS WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/DSS"
* ^jurisdiction = $m49.htm#001 "World"
* . ^comment = "The case plan progressing note can also be the means of providing feedback directly from the care team on both the patient and their condition as well as the usage and utiliy of guideline components. The knowledge egineer needs to be careful to keep the forms logic (UI) separated from the description logic (for case features) and decision logic (for recommendations) as well as any logic used for patient-level indicators (CPGMetrics) used in the Form."
* . ^mustSupport = false
* type only CodeableConcept
* type = $loinc#11506-3
* type MS
* section MS
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code"
* section ^slicing.rules = #open
* section contains impression 0..* MS
* section[impression].code only CodeableConcept
* section[impression].code = $loinc#51848-0
* section[impression].code MS
* section[impression].entry 1..1 MS
* section[impression].entry only Reference($cpg-clinicalimpression)

// Mapping: workflow
// Id: workflow
// Title: "Workflow Pattern"
// Source: CPGCasePlanProgressingNote
// Target: "http://hl7.org/fhir/workflow"

// Mapping: rim
// Id: rim
// Title: "RIM Mapping"
// Source: CPGCasePlanProgressingNote
// Target: "http://hl7.org/v3"

// Mapping: cda
// Id: cda
// Title: "CDA (R2)"
// Source: CPGCasePlanProgressingNote
// Target: "http://hl7.org/v3/cda"

// Mapping: fhirdocumentreference
// Id: fhirdocumentreference
// Title: "FHIR DocumentReference"
// Source: CPGCasePlanProgressingNote
// Target: "http://hl7.org/fhir/documentreference"

// Mapping: w5
// Id: w5
// Title: "FiveWs Pattern Mapping"
// Source: CPGCasePlanProgressingNote
// Target: "http://hl7.org/fhir/fivews"