This page provides indexes of the various artifacts (i.e. profiles, extensions, code systems, and other knowledge artifacts) defined by this implementation guide.

### ActivityDefinition Index

*   [CPG CommunicationRequest ActivityDefinition](ActivityDefinition-cpg-communicationrequest-activitydefinition.html) CPGCommunicationRequestActivityDefinition
*   [CPG CollectInformation ActivityDefinition](ActivityDefinition-cpg-collectinformation-activitydefinition.html) CPGCollectInformationActivityDefinition
*   [CPG Enrollment ActivityDefinition](ActivityDefinition-cpg-enrollment-activitydefinition.html) CPGEnrollmentActivityDefinition
*   [CPG Generate Report ActivityDefinition](ActivityDefinition-cpg-generatereport-activitydefinition.html) CPGGenerateReportActivityDefinition
*   [CPG MedicationRequest ActivityDefinition](ActivityDefinition-cpg-medicationrequest-activitydefinition.html) CPGMedicationRequestActivityDefinition
*   [CPG Dispense Medication ActivityDefinition](ActivityDefinition-cpg-dispensemedication-activitydefinition.html) CPGDispenseMedicationActivityDefinition
*   [CPG Administer Medication ActivityDefinition](ActivityDefinition-cpg-administermedication-activitydefinition.html) CPGAdministerMedicationActivityDefinition
*   [CPG Document Medication ActivityDefinition](ActivityDefinition-cpg-documentmedication-activitydefinition.html) CPGDocumentMedicationActivityDefinition
*   [CPG ImmunizationRequest ActivityDefinition](ActivityDefinition-cpg-immunizationrequest-activitydefinition.html) CPGImmunizationRequestActivityDefinition
*   [CPG ServiceRequest ActivityDefinition](ActivityDefinition-cpg-servicerequest-activitydefinition.html) CPGServiceRequestActivityDefinition
*   [CPG Propose Diagnosis ActivityDefinition](ActivityDefinition-cpg-proposediagnosistask-activitydefinition.html) CPGProposeDiagnosisTaskActivityDefinition
*   [CPG Record DetectedIssue ActivityDefinition](ActivityDefinition-cpg-recorddetectedissue-activity.html) CPGRecordDetectedIssueTaskActivityDefinition
*   [CPG Record Inference ActivityDefinition](ActivityDefinition-cpg-recordinference-activity.html) CPGRecordInferenceTaskActivityDefinition
*   [CPG Report Flag ActivityDefinition](ActivityDefinition-cpg-reportflagtask-activitydefinition.html) CPGReportFlagTaskActivityDefinition

### CapabilityStatement Index

{% include list-capabilitystatements.xhtml %}

### CodeSystem Index {#codesystem-index}

*   [CPG Activity Type](CodeSystem-cpg-activity-type-cs.html)

    A type of activity that can be performed as part of the delivery of guideline-based care.

*   [CPG Case Feature Type](CodeSystem-cpg-casefeature-type-cs.html)

    The type of a case feature, whether asserted (i.e. documented in the patient's record) or inferred (i.e. calculated from the case feature expression)

*   [CPG Case Feature Pertinence](CodeSystem-cpg-casefeature-pertinence-cs.html)

    The pertinence of a case feature relative to a case, guideline, pathway, strategy, or recommendation.

*   [CPG Common Personas](CodeSystem-cpg-common-persona-cs.html)

    Personas are the types of participants in the recommendations of a healthcare guideline, including practitioners, patients, nurses, community health workers, and care partners. The personas identified in this code system are defined based on the WHO recommendation for [Classifying health workers](https://www.who.int/hrh/statistics/Health_workers_classification.pdf). This recommendation uses codes from the [International Standard Classification for Occupations](http://www.ilo.org/public/english/bureau/stat/isco/index.htm) but defines several additional categories of health workers. In addition, the codes in that recommendation are focused on health workers, so codes for patient and care partner personas need to be considered as well. Where a code from the ISCO exists, it is used. Where a WHO recommended health worker category is used, a code is constructed beginning with a W. Where a code is introduced by this implementation guide, it is constructed beginning with a C. Note that the content is incomplete, pending a computable representation of the WHO recommendations.

*   [CPG Common Process](CodeSystem-cpg-common-process-cs.html)

    Common processes performed in providing guideline-based care, regardless of the specific guideline.

*   [CPG Recommendation Direction](CodeSystem-cpg-recommendation-direction-cs.html)

    The direction of a recommendation, either for or against a particular action, taking into account the balance between desirable and undersirable outcomes; the confidence in the magnitude of estimates of effect; the confidence in values and preferences and their variability; and resource use.

### Extension Index {#extension-index}

{% include list-extensions.xhtml %}

### OperationDefinition Index

{% include list-operationdefinitions.xhtml %}

### PlanDefinition Index

*   [CPG Common Pathway](PlanDefinition-cpg-common-pathway.html) CPG\_Common\_Pathway
*   [PlanDefinition - CPG Common Registration](PlanDefinition-cpg-common-registration.html) PlanDefinition\_CPG\_Common\_Registration

### Profile Index {#profile-index}

*   [CPGAdministerMedicationActivity](StructureDefinition-cpg-administermedicationactivity.html)

    Definition of a proposal to administer a medication as part of a computable clinical practice guideline

*   [CPGAdministerMedicationTask](StructureDefinition-cpg-administermedicationtask.html)

    Recommendation to administer a specific medication as part of the delivery of a computable clinical practice guideline

*   [CPGCarePlan](StructureDefinition-cpg-careplan.html)

    CPG care plan represents the care plan for a specific patient. The care plan may be associated with management of a specific condition, and instantiated based on a particular pathway or strategy, or it may be a combined care plan, focused on the patient, and managing treatment for multiple conditions, instantiated based on multiple pathways and strategies

*   [CPGCareTeam](StructureDefinition-cpg-careteam.html)

    CPG care team represents a care team for a specific patient

*   [CPGCareTeamDefinition](StructureDefinition-cpg-careteamdefinition.html)

    Defines the minimum expectations for a definitional care team for use with computable guideline content

*   [CPGCase](StructureDefinition-cpg-case.html)

    CPG case represents a specific case of a patient enrolled in a particular pathway. The enrollment may have been automatic, prompted, or manual.

*   [CPGCaseFeatureDefinition](StructureDefinition-cpg-casefeaturedefinition.html)

    Profile of StructureDefinition to represent a case feature of a clinical practice guideline, optionally specifying formal computational semantics, as well as relationships to other case features and specific aspects of the guideline

*   [CPGCasePlanProgressingNote](StructureDefinition-cpg-caseplanprogressingnote.html)

    CPG Case Plan Progressing Note combines relevant case features and feature groups with proposals, plans, and clinical impressions to provide a means to document patient progression with respect to a pathway in the context of a computable clinical practice guideline

*   [CPGCasePlanSummary](StructureDefinition-cpg-caseplansummary.html)

    CPG Case Plan Summary addresses information from the plan portion of the CPG, including patient-specific recommendations (i.e., proposals) along with their respective pertinent patient information and guideline recommendations that are either not applicable or not yet applicable to a specific patient

*   [CPGCasePlanSummaryDefinition](StructureDefinition-cpg-caseplansummarydefinition.html)

    CPG Case Plan Summary Definition provides a computable definition for the case features and feature groups relevant to a particular pathway, strategy, or recommendation of a clinical practice guideline

*   [CPGCaseSummary](StructureDefinition-cpg-casesummary.html)

    CPG Case Summary is the set of case features and feature groups that completely represent the case data scoped by the clinical practice guideline. This expresses the complete patient state at any given point in time.

*   [CPGCaseSummaryDefinition](StructureDefinition-cpg-casesummarydefinition.html)

    CPG Case Summary Definition provides a computable definition for all the case features and feature groups relevant to a clinical practice guideline

*   [CPGClinicalImpression](StructureDefinition-cpg-clinicalimpression.html)

    CPG Clinical Impression captures clinician judgement at any particular point, and related to the case features and pathway, strategies, and recommendations.

*   [CPGCollectInformationActivity](StructureDefinition-cpg-collectinformationactivity.html)

    Definition of a recommendation to collect information using a specific questionnaire as part of a computable clinical practice guideline

*   [CPGCommunication](StructureDefinition-cpg-communication.html)

    Documents a communication with a patient or other participant as an activity within the context of a computable clinical practice guideline

*   [CPGCommunicationActivity](StructureDefinition-cpg-communicationactivity.html)

    Definition of a recommendation for a specific communication with the patient or other participant as part of a computable clinical practice guideline

*   [CPGCommunicationRequest](StructureDefinition-cpg-communicationrequest.html)

    Recommendation for a specific communication with the patient or other participant as part of the delivery of a computable clinical practice guideline

*   [CPGComputableActivityDefinition](StructureDefinition-cpg-computableactivity.html)

    Defines the minimum expectations and behavior for a computable activity definition for use with content conforming to the CPG implementation guide

*   [CPGComputableGraphDefinition](StructureDefinition-cpg-computablegraphdefinition.html)

    Profile of GraphDefinition to establish computable expectations for the use of the GraphDefinition resource

*   [CPGComputableGuideline](StructureDefinition-cpg-computableguideline.html)

    Profile of ImplementationGuide to describe a computable Clinical Practice Guideline

*   [CPGComputableMetric](StructureDefinition-cpg-computablemetric.html)

    Defines the minimum expectations and behavior for a computable metric for use with content conforming to the CPG implementation guide

*   [CPGComputablePlanDefinition](StructureDefinition-cpg-computableplandefinition.html)

    Defines the minimum expectations and behavior for a computable plan definition

*   [CPGCondition](StructureDefinition-cpg-condition.html)

    CPG condition represents the minimum expectations for communicating condition/problem information as part of a CPG case

*   [CPGDetectedIssue](StructureDefinition-cpg-detectedissue.html)

    Documents a detected issue within the context of a computable clinical practice guideline

*   [CPGDispenseMedicationActivity](StructureDefinition-cpg-dispensemedicationactivity.html)

    Definition of an activity to dispense a specific medication as part of a computable clinical practice guideline

*   [CPGDispenseMedicationTask](StructureDefinition-cpg-dispensemedicationtask.html)

    Recommendation to dispense a specific medication as part of the delivery of a computable clinical practice guideline

*   [CPGDocumentMedicationActivity](StructureDefinition-cpg-documentmedicationactivity.html)

    Definition of an activity to document a specific medication as part of a computable clinical practice guideline

*   [CPGDocumentMedicationTask](StructureDefinition-cpg-documentmedicationtask.html)

    Recommendation to document the use of a specific medication as part of the delivery of a computable clinical practice guideline

*   [CPGEncounter](StructureDefinition-cpg-encounter.html)

    CPG encounter represents the minimum expectations for communicating encounter information as part of a CPG case

*   [CPGEnrollmentActivity](StructureDefinition-cpg-enrollmentactivity.html)

    Definition of an activity to enroll or unenroll a patient in a strategy or pathway as part of a computable clinical practice guideline

*   [CPGEnrollmentTask](StructureDefinition-cpg-enrollmenttask.html)

    Proposal to enroll the patient in a strategy or pathway as part of a computable clinical practice guideline

*   [CPGFlag](StructureDefinition-cpg-flag.html)

    Represents a flag on a patient record within the context of a computable clinical practice guideline

*   [CPGGenerateReportActivity](StructureDefinition-cpg-generatereportactivity.html)

    Definition of an activity to generate a metric, measure, or case report as part of a computable clinical practice guideline

*   [CPGGenerateReportTask](StructureDefinition-cpg-generatereporttask.html)

    Proposal to generate a metric, measure, or case report as part of a computable clinical practice guideline

*   [CPGGoal](StructureDefinition-cpg-goal.html)

    Defines the expectations for the representation of goals used in computable guidelines

*   [CPGGroup](StructureDefinition-cpg-group.html)

    Defines an actual group of subjects, suitable for use in various contexts, such as a enrollment in a pathway or participant in a study

*   [CPGGroupDefinition](StructureDefinition-cpg-groupdefinition.html)

    Represents the definition of a group of subjects, suitable for use in various contexts, such as a cohort definition, a recommendation inclusion or exclusion criteria, the members of a study, or a population criteria

*   [CPGImmunization](StructureDefinition-cpg-immunization.html)

    Documents a particular immunization as an activity within the context of a computable clinical practice guideline

*   [CPGImmunizationActivity](StructureDefinition-cpg-immunizationactivity.html)

    Definition of a recommendation for a particular immunization as part of a computable clinical practice guideline

*   [CPGImmunizationRequest](StructureDefinition-cpg-immunizationrequest.html)

    Recommendation for a particular immunization as part of the delivery of a computable clinical practice guideline

*   [CPGLocation](StructureDefinition-cpg-location.html)

    CPG location represents the minimum expectations for communicating location information as part of a CPG case

*   [CPGLocationDefinition](StructureDefinition-cpg-locationdefinition.html)

    CPG location represents the minimum expectations for communicating a definitional location as part of computable guideline content

*   [CPGMedicationAdministration](StructureDefinition-cpg-medicationadministration.html)

    Documents the administration of a particular medication as an activity within the context of a computable clinical practice guideline

*   [CPGMedicationDispense](StructureDefinition-cpg-medicationdispense.html)

    Documents the dispensing of a particular medication as an activity within the context of a computable clinical practice guideline

*   [CPGMedicationRequest](StructureDefinition-cpg-medicationrequest.html)

    Recommendation for a specific medication as part of the delivery of a computable clinical practice guideline

*   [CPGMedicationRequestActivity](StructureDefinition-cpg-medicationrequestactivity.html)

    Definition of a recommendation for a specific medication as part of a computable clinical practice guideline

*   [CPGMedicationStatement](StructureDefinition-cpg-medicationstatement.html)

    Documentation of the use of a particular medication as an activity within the context of a computable clinical practice guideline

*   [CPGMetricReport](StructureDefinition-cpg-metricreport.html)

    Records a contextualized metric as calculated within the context of the implementation of a computable clinical practice guideline

*   [CPGObservation](StructureDefinition-cpg-observation.html)

    Documents a specific observation as an activity within the context of a computable clinical practice guideline

*   [CPGOrderSetDefinition](StructureDefinition-cpg-ordersetdefinition.html)

    Profile of PlanDefinition as a Order Set for use with CPG Implementation Guide

*   [CPGOrganization](StructureDefinition-cpg-organization.html)

    CPG organization represents the minimum expectations for communicating organization information as part of a CPG case

*   [CPGPathwayDefinition](StructureDefinition-cpg-pathwaydefinition.html)

    Profile of PlanDefinition as a Clinical Pathway for use with CPG Implementation Guide. A pathway provides groupings of strategies to provide a longitudinal view of the guideline

*   [CPGPatient](StructureDefinition-cpg-patient.html)

    Profile of Patient for use with CPG Implementation Guide

*   [CPGPractitioner](StructureDefinition-cpg-practitioner.html)

    Profile of Practitioner for use with CPG Implementation Guide

*   [CPGPractitionerRole](StructureDefinition-cpg-practitionerrole.html)

    Profile of PractitionerRole for use with CPG Implementation Guide

*   [CPGPractitionerRoleDefinition](StructureDefinition-cpg-practitionerroledefinition.html)

    Profile of PractitionerRole to establish definitional practitioner roles with the CPG Implementation Guide

*   [CPGProcedure](StructureDefinition-cpg-procedure.html)

    Documents a procedure as an activity within the context of a computable clinical practice guideline

*   [CPGProposeDiagnosisActivity](StructureDefinition-cpg-proposediagnosisactivity.html)

    The definition of a recommendation to propose a specific diagnosis as part of a computable clinical practice guideline

*   [CPGProposeDiagnosisTask](StructureDefinition-cpg-proposediagnosistask.html)

    Recommendation to propose a specific diagnosis as part of the delivery of a computable clinical practice guideline

*   [CPGQuestionnaireResponse](StructureDefinition-cpg-questionnaireresponse.html)

    The response to a particular questionnaire as an activity within the context of a computable clinical practice guideline

*   [CPGQuestionnaireTask](StructureDefinition-cpg-questionnairetask.html)

    Recommendation to collect specific information using a particular questionnaire as part of the delivery of a computable clinical practice guideline

*   [CPGRecommendationDefinition](StructureDefinition-cpg-recommendationdefinition.html)

    Profile of PlanDefinition as a Recommendation Definition for use with CPG Implementation Guide

*   [CPGRecordDetectedIssueActivity](StructureDefinition-cpg-recorddetectedissueactivity.html)

    Definition of a recommendation to record a specific detected issue as part of a computable clinical practice guideline

*   [CPGRecordDetectedIssueTask](StructureDefinition-cpg-recorddetectedissuetask.html)

    Recommendation to record a specific detected issue as part of the delivery of a computable clinical practice guideline

*   [CPGRecordInferenceActivity](StructureDefinition-cpg-recordinferenceactivity.html)

    Definition of a recommendation to record a specific inference as part of a computable clinical practice guideline

*   [CPGRecordInferenceTask](StructureDefinition-cpg-recordinferencetask.html)

    Recommendation to record a particular inference as part of the delivery of a computable clinical practice guideline

*   [CPGRelatedPerson](StructureDefinition-cpg-relatedperson.html)

    CPG related person defines the minimum expectations for a person related to a patient in a CPG case, such as a care partner, spouse, or other related person

*   [CPGReportFlagActivity](StructureDefinition-cpg-reportflagactivity.html)

    Definition of a recommendation to report a particular flag as part of a computable clinical practice guideline

*   [CPGReportFlagTask](StructureDefinition-cpg-reportflagtask.html)

    Recommendation to report a flag as part of the delivery of a computable clinical practice guideline

*   [CPGServiceRequest](StructureDefinition-cpg-servicerequest.html)

    Recommendation for a particular procedure or referral to a specialist or instructions for self-care such as smoking cessation counseling or exercise

*   [CPGServiceRequestActivity](StructureDefinition-cpg-servicerequestactivity.html)

    The definition of a recommendation for a particular procedure or referral to a specialist or instructions for self-care such as smoking cessation counseling or exercise

*   [CPGStrategy](StructureDefinition-cpg-strategy.html)

    Profile of RequestGroup as a Strategy for use with the CPG Implementation Guide. Strategies are patient-specific realiziations of strategy definitions and are used to represent aspects of a care plan that still contain optionality among related patient-specific recommendations, typically focused on a particular condition or state within the overall guideline or pathway

*   [CPGStrategyDefinition](StructureDefinition-cpg-strategydefinition.html)

    Profile of PlanDefinition as a Strategy Definition for use with CPG Implementation Guide. Strategies are used to group recommendations together, typically focused on a particular condition or state within the overall guideline or pathway

*   [CPGTask](StructureDefinition-cpg-task.html)

    Defines the expectations common to tasks that represent activities used in computable guidelines

*   [CPGWorkflowDefinition](StructureDefinition-cpg-workflowdefinition.html)

    Profile of PlanDefinition as a Workflow Definition for use with CPG Implementation Guide


### Questionnaire Index

*   [CPG Common Questionnaire - Identifying information](Questionnaire-cpg-common-identity.html) CPG\_Common\_Questionnaire\_Identity
*   [CPG Common Questionnaire - Patient information](Questionnaire-cpg-common-patient-profile.html) CPG\_Common\_Questionnaire\_Patient\_Profile
*   [CPG Common Questionnaire - Resolve Patient Match](Questionnaire-cpg-common-resolve-patient-match.html) CPG\_Common\_Questionnaire\_Resolve\_Patient\_Match

### ValueSet Index {#valueset-index}

*   [CPG Activity Type](ValueSet-cpg-activity-type-vs.html)

    A type of activity that can be performed as part of the delivery of guideline-based care

*   [CPG Case Feature Type](ValueSet-cpg-casefeature-type-vs.html)

    A type of activity that can be performed as part of the delivery of guideline-based care

*   [CPG Case Feature Pertinence](ValueSet-cpg-casefeature-pertinence-vs.html)

    A type of activity that can be performed as part of the delivery of guideline-based care

*   [CPG Recommendation Direction](ValueSet-cpg-recommendation-direction-vs.html)

    The direction of a recommendation, either for or against a particular action, taking into account the balance between desirable and undesirable outcomes; the confidence in the magnitude of estimates of effect; the confidence in values and preferences and their variability; and resource use.

*   [CPG Common Persona](ValueSet-cpg-common-persona-vs.html)

    Common personas used to describe roles and participants in computable content

*   [CPG Common Process](ValueSet-cpg-common-process-vs.html)

    Common processes used to describe the high-level, conceptual activities that occur as part of the delivery of guideline-based care