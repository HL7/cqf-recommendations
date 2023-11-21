Instance: dnci-scenario8
InstanceOf: CPGQuestionnaireResponse
Usage: #example
Description: "Example test case"
* questionnaire = Canonical(activity-example-collectinformation-questionnaire)
* status = #completed
* subject = Reference(dnci-scenario8-patient)
* item
  * linkId = "A"
  * answer.valueDate = "2020-12-10"