Instance: administermedication-asset-collection
InstanceOf: CPGAssetCollection
Usage: #example
* title = "Activity Example - Administer Medication Library Collection"
* insert KnowledgeArtifactMetadata(administermedication-asset-collection, Library)
* insert RelatedFHIRLibraries
* description = "Asset collection of artifacts in the Administer Medication activity example"
* name = "ActivityExampleAdministerMedicationLibrary"
* type = $library-type#asset-collection
* relatedArtifact[+]
  * type = #depends-on
  * resource = $cpg-activity-type-cs
* relatedArtifact[+]
  * type = #composed-of
  * resource = Canonical(activity-example-administermedication-ad)
* relatedArtifact[+]
  * type = #composed-of
  * resource = Canonical(administermedication-library)
* relatedArtifact[+]
  * type = #composed-of
  * resource = Canonical(activity-example-administermedication-pd)

