Extension: CPGIsUnenrollment
Id: cpg-isUnenrollment
Title: "CPG Is Unenrollment"
Description: "Determines whether the activity is to enroll or unenroll the patient in the specified strategy or pathway."
* insert DefinitionMetadata(cpg-isUnenrollment, StructureDefinition)
* ^date = "2018-06-06"
* ^context[0].type = #element
* ^context[=].expression = "ActivityDefinition"
* ^context[+].type = #element
* ^context[=].expression = "Task"
* . 0..* ?!
  * ^short = "Unenroll?"
  * ^definition = "Determines whether the activity is to enroll or unenroll the patient in the specified strategy or pathway."
  * ^isModifierReason = "Not known why this is labelled a modifier"
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-isUnenrollment" (exactly)
* value[x] only boolean