Profile: CPGExecutableLibrary
Parent: $cpg-shareablelibrary
Id: cpg-executablelibrary
Title: "CPG Executable Library"
Description: "This profile sets the minimum expectations for an executable CQL library. Specifically, the profile requires that the library contain one of ELM XML or JSON content, the compiled representation of the CQL logic."
* insert StructureDefinitionMetadata(cpg-executablelibrary)
* relatedArtifact MS
* relatedArtifact
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* relatedArtifact contains dependency 0..* MS
* relatedArtifact[dependency]
  * type = #depends-on (exactly)
  * type only code
  * type MS
  * resource only canonical
  * resource 1..1 MS
  * resource only Canonical(CodeSystem or Library or ValueSet)
* parameter MS
* dataRequirement MS
* content MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "contentType"
  * ^slicing.rules = #open
* content contains
  elmXmlContent 0..* and
  elmJsonContent 0..*
* content[elmXmlContent]
  * ^short = "ELM XML Content"
  * ^definition = "The ELM XML translation of the CQL content represented as  base-64 encoded data."
  * contentType 0..1 MS
  * contentType = #application/elm+xml (exactly)
  * data 1..1
* content[elmJsonContent]
  * ^short = "ELM JSON Content"
  * ^definition = "The ELM JSON translation of the CQL content represented as base-64 encoded data."
  * contentType 0..1 MS
  * contentType = #application/elm+json (exactly)
  * data 1..1