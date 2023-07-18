Extension: CPGPartOf
Id: cpg-partOf
Title: "CPG Part Of Extension"
Description: "Specifies the canonical URL of a Pathway or Strategy that this definition is part of."
* insert StructureDefinitionMetadata(cpg-partOf)
* insert ExtensionContext(PlanDefinition)
* . ^comment = "For enrollment checking, if the computable PlanDefinition is not a Pathway or Strategy, then this extension is followed to attempt to determine a Pathway or Strategy to use for the enrollment check, recursively."
* value[x] only Canonical(PlanDefinition)