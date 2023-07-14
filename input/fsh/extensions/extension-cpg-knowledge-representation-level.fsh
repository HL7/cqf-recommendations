Extension: CPGKnowledgeRepresentationLevel
Id: cpg-knowledgeRepresentationLevel
Title: "CPG Knowledge Representation Level"
Description: "Defines a knowledge representation level provided by this knowledge artifact."
* insert ExtensionMetadata(cpg-knowledgeRepresentationLevel, StructureDefinition)
* ^date = "2018-06-06"
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..*
  * ^short = "narrative | semi-structured | structured | executable"
  * ^definition = "Defines a knowledge representation level provided by this knowledge artifact."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeRepresentationLevel" (exactly)
* value[x] only code
* value[x] from $cpg-knowledge-representation-level-valueset (required)
  * ^binding.description = "A level of knowledge representation provided by this artifact"