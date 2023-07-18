Profile: CPGShareableStructureDefinition
Parent: StructureDefinition
Id: cpg-shareablestructuredef
Title: "CPG Shareable Structure Definition"
Description: "Profile of StructureDefinition to establish minimum expectations for sharing a StructureDefinition including URL, name, and version. This profile also provides the ability to declare knowledge representation level and knowledge artifact capabilities."
* insert DefinitionMetadata(cpg-shareablestructuredef, StructureDefinition)
* extension contains
  $cpg-knowledgeCapability named knowledgeCapability 1..* MS and
  $cpg-knowledgeRepresentationLevel named knowledgeRepresentationLevel 0..* MS
* identifier MS
* version 1..1
* title MS
* experimental 1..1
* date MS
* publisher 1..1
* contact MS
* description 1..1
* useContext 0..* MS
* jurisdiction 0..* MS
* fhirVersion 1..1
