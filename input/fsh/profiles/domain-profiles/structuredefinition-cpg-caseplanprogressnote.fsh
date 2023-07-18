Profile: CPGCasePlanProgressingNote
Parent: $cpg-caseplansummary
Id: cpg-caseplanprogressingnote
Title: "CPG Case Plan Progressing Note"
Description: "CPG Case Plan Progressing Note combines relevant case features and feature groups with proposals, plans, and clinical impressions to provide a means to document patient progression with respect to a pathway in the context of a computable clinical practice guideline"
* insert StructureDefinitionMetadata($cpg-caseplansummary)
* . ^comment = "The case plan progressing note can also be the means of providing feedback directly from the care team on both the patient and their condition as well as the usage and utiliy of guideline components. The knowledge egineer needs to be careful to keep the forms logic (UI) separated from the description logic (for case features) and decision logic (for recommendations) as well as any logic used for patient-level indicators (CPGMetrics) used in the Form."
* type only CodeableConcept
* type = $loinc#11506-3
* type MS
* section MS
* section
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open
* section contains impression 0..* MS
* section[impression]
  * code only CodeableConcept
  * code = $loinc#51848-0
  * code MS
  * entry 1..1 MS
  * entry only Reference($cpg-clinicalimpression)