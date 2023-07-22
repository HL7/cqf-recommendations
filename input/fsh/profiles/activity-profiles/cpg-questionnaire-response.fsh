Profile: CPGQuestionnaireResponse
Parent: QuestionnaireResponse
Id: cpg-questionnaireresponse
Title: "CPG Questionnaire Response"
Description: "The response to a particular questionnaire as an activity within the context of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-questionnaireresponse)
* identifier MS
* questionnaire MS
* status MS
* subject only Reference(CPGPatient or CPGRelatedPerson)
* subject MS
* encounter only Reference(CPGEncounter)
* encounter MS
* authored MS
* author only Reference(CPGPatient or CPGPractitioner or CPGPractitionerRole or CPGRelatedPerson)
* author MS
* source only Reference(CPGPatient or CPGPractitioner or CPGPractitionerRole or CPGRelatedPerson)
* source MS
* item MS