Extension: CPGKnowledgeCapability
Id: cpg-knowledgeCapability
Title: "CPG Knowledge Capability Extension"
Description: "Defines a knowledge capability afforded by this knowledge artifact."
* insert StructureDefinitionMetadata(cpg-knowledgeCapability)
* value[x] only code
* valueCode from http://hl7.org/fhir/uv/cpg/ValueSet/cpg-knowledge-capability (required)
  * ^binding.description = "A knowledge capability provided by a knowledge artifact"