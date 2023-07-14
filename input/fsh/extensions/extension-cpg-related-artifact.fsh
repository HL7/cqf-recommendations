Extension: CPGRelatedArtifact
Id: cpg-relatedArtifact
Title: "CPG Related Artifact"
Description: "Specifies additional artifacts related to the content."
* insert ExtensionMetadata(cpg-relatedArtifact, StructureDefinition)
* ^date = "2019-06-06"
* ^context.type = #element
* ^context.expression = "Resource"
* . 0..*
  * ^short = "Additional information related to the artifact"
  * ^definition = "Specifies additional artifacts related to the content."
* url only uri
* url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-relatedArtifact" (exactly)
* value[x] only RelatedArtifact