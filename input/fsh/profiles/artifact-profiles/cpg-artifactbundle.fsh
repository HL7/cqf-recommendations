Profile: CPGArtifactBundle
Parent: Bundle
Id: cpg-artifactbundle
Title: "CPG Artifact Bundle"
Description: "Defines the minimum expectations for an artifact bundle used to package and distribute artifact content"
* insert StructureDefinitionMetadata(cpg-artifactbundle)
* type = #collection (exactly)
* type MS
  * ^short = "The bundle is a collection of artifacts for distribution"
* entry 1..* MS
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "$this.resource"
  * ^slicing.rules = #open
* entry contains
  artifact 0..*
* entry[artifact]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
