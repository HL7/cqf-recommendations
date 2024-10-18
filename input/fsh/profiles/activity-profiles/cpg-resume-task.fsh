Profile: CPGResumeTask
Parent: CPGTask
Id: cpg-resumetask
Title: "CPG Resume Task"
Description: "Recommendation to resume an activity that is currently on hold as part of the delivery of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-resumetask)
* code only CodeableConcept
* code = $cpg-activity-type-cs#resume-activity
* code MS
* focus 1..1 MS
* focus only Reference(CPGCommunicationRequest or CPGCommunication or CPGQuestionnaireTask or CPGQuestionnaireResponse or CPGMedicationRequest or CPGMedicationDispense or CPGMedicationAdministration or CPGMedicationStatement or CPGDispenseMedicationTask or CPGAdministerMedicationTask or CPGDocumentMedicationTask or CPGImmunizationRequest or CPGImmunization or CPGServiceRequest or CPGProcedure or CPGObservation or CPGEnrollmentTask or CPGGenerateReportTask or CPGProposeDiagnosisTask or CPGRecordDetectedIssueTask or CPGRecordInferenceTask or CPGReportFlagTask)
