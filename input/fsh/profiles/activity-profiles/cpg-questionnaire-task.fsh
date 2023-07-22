Profile: CPGQuestionnaireTask
Parent: CPGTask
Id: cpg-questionnairetask
Title: "CPG Questionnaire Task"
Description: "Recommendation to collect specific information using a particular questionnaire as part of the delivery of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-questionnairetask)
* code only CodeableConcept
* code = $cpg-activity-type-cs#collect-information
* code MS
* input 0..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* input contains questionnaire 1..1 MS
* input[questionnaire]
  * ^short = "Questionnaire to use"
  * ^definition = "The Questionnaire to be used to collect the information."
  * type only CodeableConcept
  * type = $cpg-activity-type-cs#collect-information
  * type MS
  * value[x] only Canonical(CPGShareableQuestionnaire)
  * value[x] MS
    * ^comment = "The canonical SHALL be a reference to at least a CPGShareableQuestionnaire."
* output ..* MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* output contains questionnaireResponse 0..1 MS
* output[questionnaireResponse]
  * ^short = "Response"
  * ^definition = "The QuestionnaireResponse that is the result of completing the task."
  * type only CodeableConcept
  * type = $cpg-activity-type-cs#collect-information
  * type MS
  * value[x] only Reference(CPGQuestionnaireResponse)
  * value[x] MS



