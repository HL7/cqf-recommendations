Profile: CPGHoldTask
Parent: CPGTask
Id: cpg-holdtask
Title: "CPG Hold Task"
Description: "Recommendation to hold an activity that is currently in progress as part of the delivery of a computable clinical practice guideline"
* insert StructureDefinitionMetadata(cpg-holdtask)
* code only CodeableConcept
* code = $cpg-activity-type-cs#hold-activity
* code MS
* focus 1..1 MS
* focus only Reference(CPGCommunicationRequest or CPGCommunication or CPGQuestionnaireTask or CPGQuestionnaireResponse or CPGMedicationRequest or CPGMedicationDispense or CPGMedicationAdministration or CPGMedicationStatement or CPGDispenseMedicationTask or CPGAdministerMedicationTask or CPGDocumentMedicationTask or CPGImmunizationRequest or CPGImmunization or CPGServiceRequest or CPGProcedure or CPGObservation or CPGEnrollmentTask or CPGGenerateReportTask or CPGProposeDiagnosisTask or CPGRecordDetectedIssueTask or CPGRecordInferenceTask or CPGReportFlagTask)
