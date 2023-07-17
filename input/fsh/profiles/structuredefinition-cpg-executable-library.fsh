Profile: CPGExecutableLibrary
Parent: $cpg-shareablelibrary
Id: cpg-executablelibrary
Title: "CPG Executable Library"
Description: "This profile sets the minimum expectations for an executable CQL library. Specifically, the profile requires that the library contain one of ELM XML or JSON content, the compiled representation of the CQL logic."
* insert DefinitionMetadata(cpg-executablelibrary, StructureDefinition)
* relatedArtifact MS
* relatedArtifact ^slicing.discriminator.type = #value
* relatedArtifact ^slicing.discriminator.path = "type"
* relatedArtifact ^slicing.rules = #open
* relatedArtifact contains dependency 0..* MS
* relatedArtifact[dependency].type only code
* relatedArtifact[dependency].type = #depends-on (exactly)
* relatedArtifact[dependency].type MS
* relatedArtifact[dependency].resource 1..1 MS
* relatedArtifact[dependency].resource only canonical
* relatedArtifact[dependency].resource ^type.targetProfile[0] = "http://hl7.org/fhir/StructureDefinition/CodeSystem"
* relatedArtifact[dependency].resource ^type.targetProfile[+] = "http://hl7.org/fhir/StructureDefinition/ValueSet"
* relatedArtifact[dependency].resource ^type.targetProfile[+] = "http://hl7.org/fhir/StructureDefinition/Library"
* parameter MS
* dataRequirement MS
* content MS
* content ^slicing.discriminator.type = #value
* content ^slicing.discriminator.path = "contentType"
* content ^slicing.rules = #open
* content contains
    elmXmlContent 0..* and
    elmJsonContent 0..*
* content[elmXmlContent] ^short = "ELM XML Content"
* content[elmXmlContent] ^definition = "The ELM XML translation of the CQL content represented as  base-64 encoded data."
* content[elmXmlContent] ^mustSupport = false
* content[elmXmlContent].contentType 0..1 MS
* content[elmXmlContent].contentType only code
* content[elmXmlContent].contentType = #application/elm+xml (exactly)
* content[elmXmlContent].data 1..1
* content[elmXmlContent].data ^mustSupport = false
* content[elmJsonContent] ^short = "ELM JSON Content"
* content[elmJsonContent] ^definition = "The ELM JSON translation of the CQL content represented as base-64 encoded data."
* content[elmJsonContent] ^mustSupport = false
* content[elmJsonContent].contentType 0..1 MS
* content[elmJsonContent].contentType only code
* content[elmJsonContent].contentType = #application/elm+json (exactly)
* content[elmJsonContent].data 1..1
* content[elmJsonContent].data ^mustSupport = false

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: CPGExecutableLibrary
Target: "http://hl7.org/v3"

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: CPGExecutableLibrary
Target: "http://hl7.org/fhir/workflow"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: CPGExecutableLibrary
Target: "http://hl7.org/fhir/fivews"

Mapping: objimpl
Id: objimpl
Title: "Object Implementation Information"
Source: CPGExecutableLibrary
Target: "http://hl7.org/fhir/object-implementation"