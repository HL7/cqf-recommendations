Extension: CPGKnowledgeRepresentationLevel
Id: cpg-knowledgeRepresentationLevel
Title: "CPG Knowledge Representation Level Extension"
Description: "Defines a knowledge representation level provided by this knowledge artifact."
* insert DefinitionMetadata(cpg-knowledgeRepresentationLevel, StructureDefinition)
* value[x] only code
* value[x] from $cpg-knowledge-representation-level-valueset (required)
  * ^binding.description = "A level of knowledge representation provided by this artifact"