Profile: CPGShareableLibrary
Parent: shareablelibrary
Id: cpg-shareablelibrary
Title: "CPG Shareable Library"
Description: "Defines the minimum expectations for a shareable library for use with computable content. This profile derives from the ShareableLibrary profile defined in the base FHIR specification, and adds support for declaring knowledge representation level and knowledge artifact capabilities."
* insert StructureDefinitionMetadata(cpg-shareablelibrary)
* extension contains
  $cpg-knowledgeCapability named knowledgeCapability 1..* MS and
  $cpg-knowledgeRepresentationLevel named knowledgeRepresentationLevel 0..* MS