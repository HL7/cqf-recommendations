Profile: CPGShareableGraphDefinition
Parent: GraphDefinition
Id: cpg-shareablegraphdefinition
Title: "CPG Shareable Graph Definition"
Description: "Profile of GraphDefinition to establish minimum expectations for sharing an GraphDefinition resource, including URL, version, and name. This profile also provides the ability to declare knowledge representation level and knowledge artifact capabilities."
* insert StructureDefinitionMetadata(cpg-shareablegraphdefinition)
* extension contains
  $cpg-knowledgeCapability named knowledgeCapability 1..* MS and
  $cpg-knowledgeRepresentationLevel named knowledgeRepresentationLevel 0..* MS and
  $cpg-identifier named identifier 0..* MS and
  $cpg-title named title 0..1 MS
* url 1..1
* version 1..1
* experimental 1..1
* date MS
* publisher 1..1
* contact MS
* description 1..1
* useContext 0..* MS
* jurisdiction 0..* MS