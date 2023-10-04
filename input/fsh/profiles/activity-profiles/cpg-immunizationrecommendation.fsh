Profile: CPGImmunizationRecommendation
Parent: ImmunizationRecommendation
Id: cpg-immunizationrecommendation
Title: "CPG Immunization Recommendation"
Description: "DEPRECATED: Use CPGMedicationRequest resource with immunization bindings. Recommendation for a particular immunization as part of the delivery of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-immunizationrecommendation)
* extension contains
  $workflow-instantiatesCanonical named instantiatesCanonical 0..1 MS and
  CPGRationale named rationale 0..1 MS
* extension[instantiatesCanonical]
  * ^short = "Source"
  * ^definition = "A link back to the definition that produced thi  s  Typically a Plan or Activity Definition."
* identifier MS
* patient only Reference(CPGPatient)
* patient MS
* date MS
* recommendation MS
  * vaccineCode MS
  * forecastStatus MS
  * dateCriterion MS
  * supportingPatientInformation MS
    * ^short = "Pertinent information"
    * ^definition = "The pertinent positive or negative information relevant to th e "
    * ^comment = "This will typically be the most relevant case features used in determining applicability, but could also be other patient-specific information relevant to interpreting or assessing appropriateness of the recommendation with respect to the patient."