Extension: CPGKnowledgeCapability
Id: cpg-knowledgeCapability
Title: "CPG Knowledge Capability Extension"
Description: "Defines a knowledge capability afforded by this knowledge artifact."
* insert StructureDefinitionMetadata(cpg-knowledgeCapability)
* value[x] only code
* valueCode from $cpg-knowledge-capability-valueset (required)
  * ^binding.description = "A knowledge capability provided by a knowledge artifact"