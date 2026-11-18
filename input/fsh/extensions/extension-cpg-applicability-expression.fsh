Extension: CPGApplicabilityExpression
Id: cpg-applicabilityExpression
Title: "CPG Applicability Expression Extension"
Description: "An expression that returns a boolean indicating whether to follow the branch or decision point (the GraphDefinition link) on which it appears."
* insert StructureDefinitionMetadata(cpg-applicabilityExpression)
* ^extension[+].url = $structuredefinition-fmm
* ^extension[=].valueInteger = 2
* insert ExtensionContext(GraphDefinition.link)
* value[x] only Expression
