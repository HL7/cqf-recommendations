Extension: CPGKnowledgeCapability
Id: cpg-knowledgeCapability
Title: "CPG Knowledge Capability"
Description: "Defines a knowledge capability afforded by this knowledge artifact."
* insert DefinitionMetadata(cpg-knowledgeCapability, StructureDefinition)
* ^date = "2018-06-06"
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..*
  * ^short = "shareable | computable | publishable | executable"
  * ^definition = "Defines a knowledge capability afforded by this knowledge artifact."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability" (exactly)
* value[x] only code
* value[x] from $cpg-knowledge-capability-valueset (required)
  * ^binding.description = "A knowledge capability provided by a knowledge artifact"