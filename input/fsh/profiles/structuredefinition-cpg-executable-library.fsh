Profile: CPGExecutableLibrary
Parent: $cpg-shareablelibrary
Id: cpg-executablelibrary
Title: "CPG Executable Library"
Description: "This profile sets the minimum expectations for an executable CQL library. Specifically, the profile requires that the library contain one of ELM XML or JSON content, the compiled representation of the CQL logic."
* insert DefinitionMetadata(cpg-executablelibrary, StructureDefinition)
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
  * resource
    * ^type.targetProfile[0] = "http://hl7.org/fhir/StructureDefinition/CodeSystem"
    * ^type.targetProfile[+] = "http://hl7.org/fhir/StructureDefinition/ValueSet"
    * ^type.targetProfile[+] = "http://hl7.org/fhir/StructureDefinition/Library"
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

// Mapping: rim
// Id: rim
// Title: "RIM Mapping"
// Source: CPGExecutableLibrary
// Target: "http://hl7.org/v3"

// Mapping: workflow
// Id: workflow
// Title: "Workflow Pattern"
// Source: CPGExecutableLibrary
// Target: "http://hl7.org/fhir/workflow"

// Mapping: w5
// Id: w5
// Title: "FiveWs Pattern Mapping"
// Source: CPGExecutableLibrary
// Target: "http://hl7.org/fhir/fivews"

// Mapping: objimpl
// Id: objimpl
// Title: "Object Implementation Information"
// Source: CPGExecutableLibrary
// Target: "http://hl7.org/fhir/object-implementation"