Instance: chf-lasix-po
InstanceOf: CPGComputableActivityDefinition
Usage: #example
Title: "CHF LASIX PO Activity Defintion"
* insert CHFActivityDefinitionMetadata(chf-lasix-po)
* name = "CHFLASIXPO"
* description = "Activity definition to administer LASIX PO as part of a congestive heart failure pathway"
* kind = #MedicationRequest
* profile = Canonical(cpg-medicationrequest)
* code = $cpg-activity-type-cs#order-medication "Order a medication"
* intent = #proposal
* priority = #routine
* doNotPerform = false
* productCodeableConcept = CHFCodes#lasix-po "LASIX PO"
* dosage
  * sequence = 1
  * text = "40mg"
  * timing.repeat
    * frequency = 1
    * period = 1
    * periodUnit = #d
  * route = $sct#26643006 "Oral Route (qualifier value)"
  * doseAndRate
    * type = $dose-rate-type#ordered "Ordered"
    * doseQuantity = 40 'mg' "mg"