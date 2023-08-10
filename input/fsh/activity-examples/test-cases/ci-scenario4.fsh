Instance: ci-scenario4
InstanceOf: QuestionnaireResponse
Usage: #example
Description: "Example test case"
* questionnaire = Canonical(activity-example-collectinformation-questionnaire)
* status = #completed
* subject = Reference(ci-scenario4-patient)
* item
  * linkId = "A"
  * answer.valueDate = "2020-12-10"