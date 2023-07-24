Instance: activity-example-collectinformation-questionnaire
InstanceOf: Questionnaire
Usage: #example
Description: "Example Questionnaire for use in collect information activity examples"
* insert ProfileMeta(cpg-shareablequestionnaire)
* insert KnowledgeArtifactMetadata(activity-example-collectinformation-questionnaire)
* name = "ActivityExampleCollectInformationQuestionnaire"
* title = "Activity Example Collect Information Questionnaire"
* item
  * linkId = "A"
  * text = "What was the date of your last visit with a medical professional?"
  * type = #date