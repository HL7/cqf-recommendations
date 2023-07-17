Profile: CPGComputableLibrary
Parent: $cpg-shareablelibrary
Id: cpg-computablelibrary
Title: "CPG Computable Library"
Description: "The computable library profile sets the minimum expectations for a computable CQL library"
* insert DefinitionMetadata(cpg-computablelibrary, StructureDefinition)
* subject[x] MS
* relatedArtifact MS
* relatedArtifact ^slicing.discriminator.type = #value
* relatedArtifact ^slicing.discriminator.path = "type"
* relatedArtifact ^slicing.rules = #open
* relatedArtifact contains dependency 0..* MS
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
* content contains cqlContent 1..1 MS
* content[cqlContent] ^short = "CQL Content"
* content[cqlContent] ^definition = "The CQL content represented as base-64 encoded data."
* content[cqlContent].contentType 1..1 MS
* content[cqlContent].contentType = #text/cql (exactly)
* content[cqlContent].data 1..1 MS

Mapping: rim
Id: rim
Title: "RIM Mapping"
Source: CPGComputableLibrary
Target: "http://hl7.org/v3"

Mapping: workflow
Id: workflow
Title: "Workflow Pattern"
Source: CPGComputableLibrary
Target: "http://hl7.org/fhir/workflow"

Mapping: w5
Id: w5
Title: "FiveWs Pattern Mapping"
Source: CPGComputableLibrary
Target: "http://hl7.org/fhir/fivews"

Mapping: objimpl
Id: objimpl
Title: "Object Implementation Information"
Source: CPGComputableLibrary
Target: "http://hl7.org/fhir/object-implementation"