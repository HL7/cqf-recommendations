Profile: CPGShareableQuestionnaire
Parent: Questionnaire
Id: cpg-shareablequestionnaire
Title: "CPG Shareable Questionnaire"
Description: "Profile of Questionnaire to establish minimum expectations for sharing a Questionnaire, including URL, version, and name. This profile also provides the ability to declare knowledge representation level and knowledge artifact capabilities"
* insert DefinitionMetadata(cpg-shareablequestionnaire, StructureDefinition)
* extension contains
  $cpg-knowledgeCapability named knowledgeCapability 1..* MS and
  $cpg-knowledgeRepresentationLevel named knowledgeRepresentationLevel 0..* MS
* url 1..1
* identifier MS
* version 1..1
* name 1..1
* title MS
* experimental 1..1
* date MS
* publisher 1..1
* contact MS
* description 1..1
* useContext 0..* MS
* jurisdiction 0..* MS
* item MS
  * extension contains
    $cpg-answerValueSetSource named answerValueSetSource 0..1 MS and
    $cpg-itemImage named itemImage 0..1 MS
  * answerOption MS
    * extension contains $cpg-responseImage named responseImage 0..1 MS