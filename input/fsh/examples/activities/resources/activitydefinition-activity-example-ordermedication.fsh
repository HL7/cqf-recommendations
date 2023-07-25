Instance: activity-example-ordermedication-ad
InstanceOf: ActivityDefinition
Usage: #example
Title: "Activity Example Generate Report AD"
* description = "Example Activity Definition for a recommendation to order a medication"
* insert ActivityDefinitionMetadata(activity-example-ordermedication-ad)
* name = "ActivityExampleOrderMedicationAD"
* kind = #MedicationRequest
* profile = Canonical(CPGMedicationRequest)
* code = $cpg-activity-type-cs#order-medication "Order a medication"
* priority = #routine
* doNotPerform = false
* productCodeableConcept = $sct#376988009 "Levothyroxine sodium 75 microgram oral tablet"
* dosage
  * sequence = 1
  * text = "75mcg daily"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
  * route = $sct#26643006 "Oral Route (qualifier value)"
  * doseAndRate
    * type = $dose-rate-type#ordered "Ordered"
    * doseQuantity = 75 'ug' "mcg"