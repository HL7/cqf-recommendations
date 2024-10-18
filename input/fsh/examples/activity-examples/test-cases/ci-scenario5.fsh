Instance: ci-scenario5
InstanceOf: CPGQuestionnaireResponse
Usage: #example
Description: "Example test case - Collect Information - Scenario 5 - QuestionnaireResponse"
* questionnaire = Canonical(activity-example-collectinformation-questionnaire)
* status = #completed
* subject = Reference(ci-scenario5-patient)
* item
  * linkId = "A"
  * answer.valueDate = "2020-12-10"