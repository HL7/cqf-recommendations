Instance: activity-example-recommendimmunization-ad
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to provide an immunization"
* insert ActivityDefinitionMetadata(activity-example-recommendimmunization-ad)
* name = "ActivityExampleRecommendImmunizationAD"
* title = "Activity Example Recommend Immunization AD"
* kind = #ImmunizationRecommendation
* profile = Canonical(CPGImmunizationRecommendation)
* code = $cpg-activity-type-cs#recommend-immunization "Recommend an immunization"
* intent = #proposal
* priority = #routine
* doNotPerform = false
* productCodeableConcept = $sct#14745005 "Hepatitis A vaccine"