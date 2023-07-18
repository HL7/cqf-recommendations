Profile: CPGRelatedPerson
Parent: RelatedPerson
Id: cpg-relatedperson
Title: "CPG Related Person"
Description: "CPG related person defines the minimum expectations for a person related to a patient in a CPG case, such as a care partner, spouse, or other related person"
* insert StructureDefinitionMetadata(cpg-relatedperson)
* identifier MS
* active 1..1 MS
* patient 1..1 MS
* patient only Reference($cpg-patient)
* relationship MS
* name 1..* MS