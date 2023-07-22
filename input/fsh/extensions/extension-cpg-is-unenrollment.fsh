Extension: CPGIsUnenrollment
Id: cpg-isUnenrollment
Title: "CPG Is Unenrollment Extension"
Description: "Determines whether the activity is to enroll or unenroll the patient in the specified strategy or pathway."
* insert StructureDefinitionMetadata(cpg-isUnenrollment)
* insert ExtensionContext(ActivityDefinition)
* insert ExtensionContext(Task)
* . ?!
  * ^isModifierReason = "Not known why this is labelled a modifier"
* value[x] only boolean