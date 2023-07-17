Extension: CPGTopic
Id: cpg-topic
Title: "CPG Topic"
Description: "Descriptive topics related to the content of the artifact. Topics provide a high-level categorization of the artifact that can be useful for filtering and searching."
* insert DefinitionMetadata(cpg-topic, StructureDefinition)
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..*
  * ^short = "E.g. Education, Treatment, Assessment, etc."
  * ^definition = "Descriptive topics related to the content of the artifact. Topics provide a high-level categorization of the artifact that can be useful for filtering and searching."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-topic" (exactly)
* value[x] only CodeableConcept
* value[x] from $definition-topic (example)
  * ^binding.description = "Topics for categorization and searching of artifacts"