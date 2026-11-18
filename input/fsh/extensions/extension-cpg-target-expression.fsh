Extension: CPGTargetExpression
Id: cpg-targetExpression
Title: "CPG Target Expression Extension"
Description: "An expression that returns the resources for the target of a GraphDefinition link. The resources returned are consistent with the type (and profile, if specified) of the target."
* insert StructureDefinitionMetadata(cpg-targetExpression)
* ^extension[+].url = $structuredefinition-fmm
* ^extension[=].valueInteger = 2
* insert ExtensionContext(GraphDefinition.link.target)
* value[x] only Expression
