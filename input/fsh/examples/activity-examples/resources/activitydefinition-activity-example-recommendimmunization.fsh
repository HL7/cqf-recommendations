Instance: activity-example-recommendimmunization-ad
InstanceOf: CPGImmunizationActivity
Usage: #example
* title = "Activity Example Recommend Immunization AD"
* insert ExampleActivityDefinitionMetadata(activity-example-recommendimmunization-ad)
* description = "Example Activity Definition for a recommendation to provide an immunization"
* name = "ActivityExampleRecommendImmunizationAD"
* kind = #MedicationRequest
* profile = Canonical(CPGImmunizationRequest)
* code = $cpg-activity-type-cs#recommend-immunization "Recommend an immunization"
* intent = #proposal
* priority = #routine
* doNotPerform = false
* productCodeableConcept = $sct#871751006 "Vaccine product containing only Hepatitis A virus antigen (medicinal product)"