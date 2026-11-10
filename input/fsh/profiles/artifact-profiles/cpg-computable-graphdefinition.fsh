Profile: CPGComputableGraphDefinition
Parent: GraphDefinition
Id: cpg-computablegraphdefinition
Title: "CPG Computable Graph Definition"
Description: "Profile of GraphDefinition to establish computable expectations for the use of the GraphDefinition resource"
* insert StructureDefinitionMetadata(cpg-computablegraphdefinition)
* extension contains
  $cqf-library named library 0..* MS
* extension[library] ^comment = "Libraries containing logic referenced by the expressions in this graph definition. Options for translating CQL logic (such as CQL-to-ELM translator options) are specified on the referenced Library, using the cqf-cqlOptions extension, rather than on the graph definition."
* start MS
* link MS
* link
  * extension contains
    CPGApplicabilityExpression named applicabilityExpression 0..1 MS
  * extension[applicabilityExpression] ^short = "Whether to follow this link"
  * target
    * extension contains
      CPGTargetExpression named targetExpression 0..1 MS
    * extension[targetExpression] ^short = "Resources for this target"
    * extension[targetExpression] ^comment = "When the profile of the target is a CPGCaseFeatureDefinition, the target expression is typically the feature expression (cpg-featureExpression) of that case feature."
    * profile ^comment = "The profile is typically a CPGCaseFeatureDefinition, identifying the case feature represented by this target."
