Extension: CPGSummaryFor
Id: cpg-summaryFor
Title: "CPG Summary For Extension"
Description: "Specifies a case (episode of care), pathway, strategy, or recommendation which this summary is for."
* insert StructureDefinitionMetadata(cpg-summaryFor)
* insert ExtensionContext(Composition)
* value[x] only Reference(CPGCase or CPGCarePlan or CPGStrategy or CPGCommunicationRequest or CPGImmunizationRecommendation or CPGProposeDiagnosisTask or CPGQuestionnaireTask or CPGRecordDetectedIssueTask or CPGRecordInferenceTask or CPGMedicationRequest or CPGReportFlagTask or CPGServiceRequest)