Extension: CPGTopic
Id: cpg-topic
Title: "CPG Topic Extension"
Description: "Descriptive topics related to the content of the artifact. Topics provide a high-level categorization of the artifact that can be useful for filtering and searching."
* insert DefinitionMetadata(cpg-topic, StructureDefinition)
* value[x] only CodeableConcept
* value[x] from $definition-topic (example)
  * ^binding.description = "Topics for categorization and searching of artifacts"