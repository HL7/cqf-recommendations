Extension: CPGFeatureExpression
Id: cpg-featureExpression
Title: "CPG Feature Expression Extension"
Description: "Defines formal computational semantics for the feature, combining the inference and assertion expressions. This is typically only required if the feature is of a different type than the profile (e.g. a boolean feature)."
* insert DefinitionMetadata(cpg-featureExpression, StructureDefinition)
* insert ExtensionContext(StructureDefinition)
* . 0..1
* value[x] only Expression