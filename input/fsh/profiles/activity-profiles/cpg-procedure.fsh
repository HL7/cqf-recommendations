Profile: CPGProcedure
Parent: Procedure
Id: cpg-procedure
Title: "CPG Procedure"
Description: "Documents a procedure as an activity within the context of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-procedure)
* extension contains
  CPGInstantiatesCaseFeature named instantiatesCaseFeature 0..1 MS and
  CPGCaseFeatureType named caseFeatureType 0..1 MS and
  CPGCaseFeaturePertinence named caseFeaturePertinence 0..1 MS
* identifier MS
* instantiatesCanonical MS
  * ^short = "Source"
  * ^definition = "A link back to the definition that ultimately produced this communication. This is typically a Plan or Activity Definition."
* basedOn MS
* status MS
* statusReason MS
* category MS
* code MS
* subject MS
* encounter MS
* reasonCode MS
* reasonReference MS
  * ^short = "Pertinent information"
  * ^definition = "The pertinent positive or negative information relative to this event."