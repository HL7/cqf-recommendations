Profile: CPGCasePlanSummary
Parent: Composition
Id: cpg-caseplansummary
Title: "CPG Case Plan Summary"
Description: "CPG Case Plan Summary addresses information from the plan portion of the CPG, including patient-specific recommendations (i.e., proposals) along with their respective pertinent patient information and guideline recommendations that are either not applicable or not yet applicable to a specific patient"
* insert StructureDefinitionMetadata(cpg-caseplansummary)
* . ^comment = "The case/plan summary view provides the ability to address information from the plan portion of the CPG, including patient-specific recommendations (i.e., proposals) along with their respective evidence (i.e., Evidence Resources used in the CPGRecommendation) and guideline recommendations that are either not applicable or not yet applicable to a specific patient, together with patient-level information (i.e., CPGCaseFeatures). Furthermore, the case/plan summary view may be scoped to a given context, such as a given recommendation or set of recommendations, a point in time or anchoring event, or all the information related to a particular case feature, particularly features can represent higher order clinical concepts such as disease or pathophysiological process states."
* extension contains
  $workflow-instantiatesCanonical named instantiatesCanonical 0..1 MS and
  $cpg-summaryFor named summaryFor 0..* MS
* extension[instantiatesCanonical]
  * ^short = "Source"
  * ^definition = "A link back to the definition that produced this summary. Typically a CPGCasePlanSummaryDefinition."
* identifier MS
* status MS
* type MS
* category MS
* subject only Reference($cpg-patient)
* subject MS
* encounter only Reference($cpg-encounter)
* encounter MS
* date MS
* author only Reference($cpg-practitioner or $cpg-practitionerrole)
* author MS