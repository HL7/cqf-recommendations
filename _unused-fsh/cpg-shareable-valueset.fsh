Profile: CPGShareableValueSet
Parent: shareablevalueset
Id: cpg-shareablevalueset
Title: "CPG Shareable Value Set"
Description: "Defines the minimum expectations for shareable value sets described in support of computable content. This profile derives from the ShareableValueSet profile defined in the base FHIR specification, and adds support for declaring knowledge representation level and knowledge artifact capabilities."
* insert StructureDefinitionMetadata(cpg-shareablevalueset)
* extension contains
  $cpg-knowledgeCapability named knowledgeCapability 1..* MS and
  $cpg-knowledgeRepresentationLevel named knowledgeRepresentationLevel 0..* MS