Profile: CPGPractitionerRole
Parent: PractitionerRole
Id: cpg-practitionerrole
Title: "CPG Practitioner Role"
Description: "Profile of PractitionerRole for use with CPG Implementation Guide"
* insert StructureDefinitionMetadata(cpg-practitionerrole)
* identifier MS
  * use MS
  * value MS
* practitioner 1..1
* practitioner only Reference(CPGPractitioner)
* code 0..* MS
* code from CPGCommonPersonaVS (preferred)
  * ^binding.description = "Common personas for use with computable guideline content"