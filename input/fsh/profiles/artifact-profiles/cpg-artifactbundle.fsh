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
  * resource only CPGComputableActivityDefinition
* entry[careTeamDefinition]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only CPGCareTeamDefinition
* entry[codeSystem]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only CodeSystem
* entry[graphDefinition]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only CPGComputableGraphDefinition
* entry[groupDefinition]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only CPGGroupDefinition
* entry[implementationGuide]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only CPGComputableGuideline
* entry[library]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only Library
* entry[locationDefinition]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only CPGLocationDefinition
* entry[measure]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only CPGComputableMetric
* entry[planDefinition]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only CPGComputablePlanDefinition
* entry[practitionerRoleDefinition]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only CPGPractitionerRoleDefinition
* entry[questionnaire]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only CPGComputableQuestionnaire
* entry[structureDefinition]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only CPGCaseFeatureDefinition
* entry[valueSet]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only ValueSet
* entry[testCase]
  * ^short = "The packaged artifact"
  * resource 1..1 MS
  * resource only CPGTestCaseBundle