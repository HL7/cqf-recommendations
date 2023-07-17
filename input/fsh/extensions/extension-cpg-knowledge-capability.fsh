Extension: CPGKnowledgeCapability
Id: cpg-knowledgeCapability
Title: "CPG Knowledge Capability Extension"
Description: "Defines a knowledge capability afforded by this knowledge artifact."
* insert DefinitionMetadata(cpg-knowledgeCapability, StructureDefinition)
* value[x] only code
* value[x] from $cpg-knowledge-capability-valueset (required)
  * ^binding.description = "A knowledge capability provided by a knowledge artifact"