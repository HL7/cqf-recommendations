Instance: chf-lasix-iv
InstanceOf: CPGComputableActivityDefinition
Usage: #example
Title: "CHF LASIX IV Activity Defintion"
* insert CHFActivityDefinitionMetadata(chf-lasix-iv)
* name = "CHFLASIXIV"
* description = "Activity definition to administer LASIX IV as part of a congestive heart failure pathway"
* kind = #MedicationRequest
* profile = Canonical(cpg-medicationrequest)
* code = $cpg-activity-type-cs#order-medication "Order a medication"
* intent = #proposal
* priority = #routine
* doNotPerform = false
* productCodeableConcept = CHFCodes#lasix-iv "LASIX IV"
* dosage
  * sequence = 1
  * text = "40mg"
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * route = $sct#47625008 "Intravenous Route (qualifier value)"
  * doseAndRate
    * type = $dose-rate-type#ordered "Ordered"
    * doseQuantity = 40 'mg' "mg"