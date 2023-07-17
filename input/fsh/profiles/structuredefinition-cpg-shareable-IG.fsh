Profile: CPGShareableImplementationGuide
Parent: ImplementationGuide
Id: cpg-shareableig
Title: "CPG Shareable Implementation Guide"
Description: "Profile of ImplementationGuide to establish minimum expectations for sharing an ImplementationGuide resource in support of computable content, including URL, version, and name. The profile also provides the ability to declare knowledge representation level and knowledge artifact capabilities."
* insert DefinitionMetadata(cpg-shareableig, StructureDefinition)
* extension contains
    $cpg-knowledgeCapability named knowledgeCapability 1..* MS and
    $cpg-knowledgeRepresentationLevel named knowledgeRepresentationLevel 0..* MS
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
