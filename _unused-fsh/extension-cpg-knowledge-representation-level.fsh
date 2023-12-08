Extension: CPGKnowledgeRepresentationLevel
Id: cpg-knowledgeRepresentationLevel
Title: "CPG Knowledge Representation Level Extension"
Description: "Defines a knowledge representation level provided by this knowledge artifact."
* insert StructureDefinitionMetadata(cpg-knowledgeRepresentationLevel)
* insert ExtensionContext(Resource)
* value[x] only code
* valueCode from $cpg-knowledge-representation-level-valueset (required)
  * ^binding.description = "A level of knowledge representation provided by this artifact"