Profile: CPGComputableQuestionnaire
Parent: Questionnaire
Id: cpg-computablequestionnaire
Title: "CPG Computable Questionnaire"
Description: "Profile of Questionnaire to establish minimum expectations for a Questionnaire for use with computable guideline content. Questionnaires that use advanced rendering features may also conform to the SDC Advanced Rendering Questionnaire profile (http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-render)."
* insert StructureDefinitionMetadata(cpg-computablequestionnaire)
* item MS
  * extension contains
    $cpg-answerValueSetSource named answerValueSetSource 0..1 MS and
    $sdc-questionnaire-itemMedia named itemMedia 0..1 MS
  * answerOption MS
    * extension contains $sdc-questionnaire-itemAnswerMedia named itemAnswerMedia 0..1 MS