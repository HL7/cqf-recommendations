Instance: ci-scenario5
InstanceOf: QuestionnaireResponse
Usage: #example
* questionnaire = Canonical(activity-example-collectinformation-questionnaire)
* status = #completed
* subject = Reference(ci-scenario5-patient)
* item
  * linkId = "A"
  * answer.valueDate = "2020-12-10"