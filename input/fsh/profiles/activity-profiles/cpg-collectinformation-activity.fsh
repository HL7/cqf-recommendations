Profile: CPGCollectInformationActivity
Parent: CPGComputableActivityDefinition
Id: cpg-collectinformationactivity
Title: "CPG Collect Information Activity"
Description: "Definition of a recommendation to collect information using a specific questionnaire as part of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-collectinformationactivity)
* extension contains CPGCollectWith named collectWith 0..1 MS
* kind 1..1 MS
* kind only code
* kind = #Task (exactly)
* profile 1..1 MS
* profile only canonical
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask" (exactly)
  * ^short = "At least a CPG Questionnaire Task"
  * ^definition = "The profile that the resulting task must conform to; at least a CPGQuestionnaireTask, though the activity definition may introduce further constraints."
* code = $cpg-activity-type-cs#collect-information
* intent 1..1 MS
* intent only code
* intent = #proposal (exactly)
* doNotPerform 1..1 MS



