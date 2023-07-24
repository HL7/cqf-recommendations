
Alias: $sct = http://snomed.info/sct

Instance: activity-example-recommendimmunization
InstanceOf: ActivityDefinition
Usage: #example
Description: "Example Activity Definition for a recommendation to provide an immunization"
* insert ActivityDefinitionMetadata(activity-example-recommendimmunization)
* name = "ActivityExampleRecommendImmunization"
* title = "Activity Example Recommend Immunization"
* kind = #ImmunizationRecommendation
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationrecommendation"
* code = $cpg-activity-type-cs#recommend-immunization "Recommend an immunization"
* intent = #proposal
* priority = #routine
* doNotPerform = false
* productCodeableConcept = $sct#14745005 "Hepatitis A vaccine"