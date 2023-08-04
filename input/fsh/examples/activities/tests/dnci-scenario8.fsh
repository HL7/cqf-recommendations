Instance: dnci-scenario8
InstanceOf: QuestionnaireResponse
Usage: #example
* questionnaire = Canonical(activity-example-collectinformation-questionnaire)
* status = #completed
* subject = Reference(dnci-scenario8-patient)
* item
  * linkId = "A"
  * answer.valueDate = "2020-12-10"