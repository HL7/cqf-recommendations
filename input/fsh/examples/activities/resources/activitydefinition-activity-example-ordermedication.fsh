
Alias: $sct = http://snomed.info/sct
Alias: $dose-rate-type = http://terminology.hl7.org/CodeSystem/dose-rate-type

Instance: activity-example-ordermedication
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to order a medication"
* insert ActivityDefinitionMetadata(activity-example-ordermedication)

* name = "ActivityExampleOrderMedication"
* title = "Activity Example Order Medication"
* kind = #MedicationRequest
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequest"
* code = $cpg-activity-type-cs#order-medication "Order a medication"
* intent = #proposal
* priority = #routine
* doNotPerform = false
* productCodeableConcept = $sct#376988009 "Levothyroxine sodium 75 microgram oral tablet"
* dosage.sequence = 1
* dosage.text = "75mcg daily"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route = $sct#26643006 "Oral Route (qualifier value)"
* dosage.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosage.doseAndRate.doseQuantity = 75 'ug' "mcg"