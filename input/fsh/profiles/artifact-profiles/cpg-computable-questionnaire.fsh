Profile: CPGComputableQuestionnaire
Parent: Questionnaire
Id: cpg-computablequestionnaire
Title: "CPG Computable Questionnaire"
Description: "Profile of Questionnaire to establish minimum expectations for a Questionnaire for use with computable guideline content"
* insert StructureDefinitionMetadata(cpg-computablequestionnaire)
* item MS
  * extension contains
    $cpg-answerValueSetSource named answerValueSetSource 0..1 MS and
    $cpg-itemImage named itemImage 0..1 MS
  * answerOption MS
    * extension contains $cpg-responseImage named responseImage 0..1 MS