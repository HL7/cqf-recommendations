Profile: CPGClinicalImpression
Parent: ClinicalImpression
Id: cpg-clinicalimpression
Title: "CPG Clinical Impression"
Description: "CPG Clinical Impression captures clinician judgement at any particular point, and related to the case features and pathway, strategies, and recommendations."
* insert StructureDefinitionMetadata(cpg-clinicalimpression)
* . ^comment = "This assessment is intended to capture, among other things, clinician reasoning and rationale for following or not following a particular recommendation, as well as reasoning about diagnoses, and documenting judgements about patient care. To the extent possible, this should support capturing the rationale in a structured way so that it can be used to augment automated support as much as possible."
* extension contains $cpg-impressionFor named impressionFor 0..1 MS
* identifier MS
* status MS
* code MS
* description MS
* subject only Reference(CPGPatient)
* subject MS
* encounter only Reference(CPGEncounter)
* encounter MS
* effective[x] MS
* date MS
* assessor only Reference(CPGPractitioner or CPGPractitionerRole)
* assessor MS
* protocol MS