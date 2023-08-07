Instance: activity-example-administermedication-library
InstanceOf: Library
Usage: #example
Title: "Activity Example - Administer Medication Library Collection"
* description = "Asset collection of artifacts in the Administer Medication activity example"
* insert Profile(cpg-assetcollection)
* insert KnowledgeArtifactMetadata(activity-example-administermedication-library, Library)
* insert RelatedFHIRLibraries
* name = "ActivityExampleAdministerMedicationLibrary"
* type = $library-type#asset-collection
* relatedArtifact[+]
  * type = #depends-on
//  * resource = Canonical(cpg-activity-type-cs)
* relatedArtifact[+]
  * type = #composed-of
  * resource = Canonical(activity-example-administermedication-ad)
* relatedArtifact[+]
  * type = #composed-of
  * resource = Canonical(administermedication-library)
* relatedArtifact[+]
  * type = #composed-of
  * resource = Canonical(activity-example-administermedication-pd)

