


Instance: activity-example-administermedication-library
InstanceOf: Library
Usage: #example
Description: "Asset collection of artifacts in the Administer Medication activity example"
* insert ProfileMeta(cpg-assetcollection)
* insert KnowledgeArtifactMetadata(activity-example-administermedication-library)
* name = "ActivityExampleAdministerMedicationLibrary"
* title = "Activity Example - Administer Medication Library Collection"
* type = $library-type#asset-collection
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/Library/FHIR-ModelInfo|4.0.1"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/Library/FHIRHelpers|4.0.1"
* relatedArtifact[+]
  * type = #depends-on
  * resource = "http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type"
* relatedArtifact[+]
  * type = #composed-of
  * resource = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/activity-example-administermedication"
* relatedArtifact[+]
  * type = #composed-of
  * resource = "http://hl7.org/fhir/uv/cpg/Library/administer-medication-library"
* relatedArtifact[+]
  * type = #composed-of
  * resource = "http://hl7.org/fhir/uv/cpg/PlanDefinition/activity-example-administermedication"

