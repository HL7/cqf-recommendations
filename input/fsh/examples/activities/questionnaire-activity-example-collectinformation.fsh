Instance: activity-example-collectinformation-questionnaire
InstanceOf: Questionnaire
Usage: #example
Title: "Activity Example Collect Information Questionnaire"
* description = "Example Questionnaire for use in collect information activity examples"
* insert Profile(cpg-shareablequestionnaire)
* insert KnowledgeArtifactMetadata(activity-example-collectinformation-questionnaire, Questionnaire)
* name = "ActivityExampleCollectInformationQuestionnaire"
* item
  * linkId = "A"
  * text = "What was the date of your last visit with a medical professional?"
  * type = #date