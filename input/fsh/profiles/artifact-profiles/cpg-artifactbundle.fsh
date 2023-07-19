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
  activityDefinition 0..* MS and
  careTeamDefinition 0..* MS and
  codeSystem 0..* MS and
  graphDefinition 0..* MS and
  groupDefinition 0..* MS and
  implementationGuide 0..* MS and
  library 0..* MS and
  locationDefinition 0..* MS and
  measure 0..* MS and
  planDefinition 0..* MS and
  practitionerRoleDefinition 0..* MS and
  questionnaire 0..* MS and
  structureDefinition 0..* MS and
  valueSet 0..* MS and
  testCase 0..* MS
* entry[activityDefinition]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only $cpg-shareableactivitydefinition
* entry[careTeamDefinition]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only $cpg-careteamdefinition
* entry[codeSystem]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only $cpg-shareablecodesystem
* entry[graphDefinition]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only $cpg-shareablegraphdefinition
* entry[groupDefinition]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only $cpg-groupdefinition
* entry[implementationGuide]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only $cpg-shareableig
* entry[library]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only $cpg-shareablelibrary
* entry[locationDefinition]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only $cpg-locationdefinition
* entry[measure]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only $cpg-shareablemetric
* entry[planDefinition]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only $cpg-shareableplandefinition
* entry[practitionerRoleDefinition]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only $cpg-practitionerroledefinition
* entry[questionnaire]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only $cpg-shareablequestionnaire
* entry[structureDefinition]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only $cpg-shareablestructuredef
* entry[valueSet]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only $cpg-shareablevalueset
* entry[testCase]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only $cpg-testcasebundle