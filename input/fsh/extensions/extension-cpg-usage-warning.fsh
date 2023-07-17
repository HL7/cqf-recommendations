Extension: CPGUsageWarning
Id: cpg-usageWarning
Title: "CPG Usage Warning Extension"
Description: "An extra warning about the correct use of the value set."
* insert DefinitionMetadata(cpg-usageWarning, StructureDefinition)
* insert ExtensionContext(ValueSet)
* . 0..1
* value[x] only string