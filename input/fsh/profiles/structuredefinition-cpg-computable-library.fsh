Profile: CPGComputableLibrary
Parent: $cpg-shareablelibrary
Id: cpg-computablelibrary
Title: "CPG Computable Library"
Description: "The computable library profile sets the minimum expectations for a computable CQL library"
* insert StructureDefinitionMetadata(cpg-computablelibrary)
* subject[x] MS
* relatedArtifact MS
* relatedArtifact
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* relatedArtifact contains dependency 0..* MS
* relatedArtifact[dependency]
  * type = #depends-on (exactly)
  * type MS
  * resource 1..1 MS
  * resource only Canonical(CodeSystem or ValueSet or Library)
* parameter MS
* dataRequirement MS
* content MS
* content
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "contentType"
  * ^slicing.rules = #open
* content contains cqlContent 1..1 MS
* content[cqlContent]
  * ^short = "CQL Content"
  * ^definition = "The CQL content represented as base-64 encoded data."
  * contentType 1..1 MS
  * contentType = #text/cql (exactly)
  * data 1..1 MS