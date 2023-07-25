These examples illustrate general implementation patterns for activity processing
and recommendations related to performing activities.

NOTE: The recommendations here are dramatically simplified to illustrate the general
pattern for positive and negative recommendations, with the ability for users to reject
the recommendation, and flexibility in how the recommendation is achieved.

Specifically:
* There is no terminology, any request/event on any topic will do
* There is no timing, any request/event will do at any time
* There is no reference to participants other than the patient
* There is no relationship to a setting
* There is no relationship to an encounter or episode
* There is no relationship to a care plan

These simplifications allow the example to focus exclusively on the pattern for
recommending and for accepting/rejecting the proposal, as well as documenting
the completion, or explicit non-performance of the activity.

### Send a message

A positive recommendation to send a message

* [SendMessage Library](Library-sendmessage-library.html)
* [SendMessage ActivityDefinition](ActivityDefinition-activity-example-sendmessage-ad.html)
* [SendMessage PlanDefinition](PlanDefinition-activity-example-sendmessage-pd.html)

* sm-scenario1   * [Patient-sm-scenario1](Patient-sm-scenario1.html)
* sm-scenario2   * [CommunicationRequest-sm-scenario2](CommunicationRequest-sm-scenario2.html)
* sm-scenario2   * [Patient-sm-scenario2](Patient-sm-scenario2.html)
* sm-scenario3   * [CommunicationRequest-sm-scenario3](CommunicationRequest-sm-scenario3.html)
* sm-scenario3   * [Patient-sm-scenario3](Patient-sm-scenario3.html)
* sm-scenario4   * [Communication-sm-scenario4](Communication-sm-scenario4.html)
* sm-scenario4   * [Patient-sm-scenario4](Patient-sm-scenario4.html)
* sm-scenario5   * [Communication-sm-scenario5](Communication-sm-scenario5.html)
* sm-scenario5   * [CommunicationRequest-sm-scenario5](CommunicationRequest-sm-scenario5.html)
* sm-scenario5   * [Patient-sm-scenario5](Patient-sm-scenario5.html)
* sm-scenario6   * [Communication-sm-scenario6](Communication-sm-scenario6.html)
* sm-scenario6   * [Patient-sm-scenario6](Patient-sm-scenario6.html)
* sm-scenario7   * [Communication-sm-scenario7](Communication-sm-scenario7.html)
* sm-scenario7   * [CommunicationRequest-sm-scenario7](CommunicationRequest-sm-scenario7.html)
* sm-scenario7   * [Patient-sm-scenario7](Patient-sm-scenario7.html)

### Do not send a message

A negative recommendation not to send a message

* [DoNotSendMessage Library](Library-donotsendmessage-library.html)
* [DoNotSendMessage ActivityDefinition](ActivityDefinition-activity-example-donotsendmessage-ad.html)
* [DoNotSendMessage PlanDefinition](PlanDefinition-activity-example-donotsendmessage-pd.html)

* dnsm-scenario1 * [Communication-dnsm-scenario1](Communication-dnsm-scenario1.html)
* dnsm-scenario1 * [Patient-dnsm-scenario1](Patient-dnsm-scenario1.html)
* dnsm-scenario2 * [Communication-dnsm-scenario2](Communication-dnsm-scenario2.html)
* dnsm-scenario2 * [CommunicationRequest-dnsm-scenario2](CommunicationRequest-dnsm-scenario2.html)
* dnsm-scenario2 * [Patient-dnsm-scenario2](Patient-dnsm-scenario2.html)
* dnsm-scenario3 * [Communication-dnsm-scenario3](Communication-dnsm-scenario3.html)
* dnsm-scenario3 * [CommunicationRequest-dnsm-scenario3](CommunicationRequest-dnsm-scenario3.html)
* dnsm-scenario3 * [Patient-dnsm-scenario3](Patient-dnsm-scenario3.html)
* dnsm-scenario4 * [CommunicationRequest-dnsm-scenario4](CommunicationRequest-dnsm-scenario4.html)
* dnsm-scenario4 * [Patient-dnsm-scenario4](Patient-dnsm-scenario4.html)
* dnsm-scenario5 * [CommunicationRequest-dnsm-scenario5](CommunicationRequest-dnsm-scenario5.html)
* dnsm-scenario5 * [CommunicationRequest-stop-dnsm-scenario5](CommunicationRequest-stop-dnsm-scenario5.html)
* dnsm-scenario5 * [Patient-dnsm-scenario5](Patient-dnsm-scenario5.html)
* dnsm-scenario6 * [CommunicationRequest-dnsm-scenario6](CommunicationRequest-dnsm-scenario6.html)
* dnsm-scenario6 * [CommunicationRequest-stop-dnsm-scenario6](CommunicationRequest-stop-dnsm-scenario6.html)
* dnsm-scenario6 * [Patient-dnsm-scenario6](Patient-dnsm-scenario6.html)
* dnsm-scenario7 * [Communication-dnsm-scenario7](Communication-dnsm-scenario7.html)
* dnsm-scenario7 * [Patient-dnsm-scenario7](Patient-dnsm-scenario7.html)
* dnsm-scenario8 * [Communication-dnsm-scenario8](Communication-dnsm-scenario8.html)
* dnsm-scenario8 * [Patient-dnsm-scenario8](Patient-dnsm-scenario8.html)
* dnsm-scenario9 * [Patient-dnsm-scenario9](Patient-dnsm-scenario9.html)

### Collect information

* [CollectInformation Library](Library-collectinformation-library.html)
* [CollectInformation ActivityDefinition](ActivityDefinition-activity-example-collectinformation-ad.html)
* [CollectInformation PlanDefinition](PlanDefinition-activity-example-collectinformation-pd.html)

* ci-scenario1   * [Patient-ci-scenario1](Patient-ci-scenario1.html)
* ci-scenario2   * [Patient-ci-scenario2](Patient-ci-scenario2.html)
* ci-scenario2   * [Task-request-ci-scenario2](Task-request-ci-scenario2.html)
* ci-scenario3   * [Patient-ci-scenario3](Patient-ci-scenario3.html)
* ci-scenario3   * [Task-request-ci-scenario3](Task-request-ci-scenario3.html)
* ci-scenario4   * [Patient-ci-scenario4](Patient-ci-scenario4.html)
* ci-scenario4   * [QuestionnaireResponse-ci-scenario4](QuestionnaireResponse-ci-scenario4.html)
* ci-scenario4   * [Task-event-ci-scenario4](Task-event-ci-scenario4.html)
* ci-scenario5   * [Patient-ci-scenario5](Patient-ci-scenario5.html)
* ci-scenario5   * [QuestionnaireResponse-ci-scenario5](QuestionnaireResponse-ci-scenario5.html)
* ci-scenario5   * [Task-event-ci-scenario5](Task-event-ci-scenario5.html)
* ci-scenario5   * [Task-request-ci-scenario5](Task-request-ci-scenario5.html)
* ci-scenario6   * [Patient-ci-scenario6](Patient-ci-scenario6.html)
* ci-scenario6   * [Task-event-ci-scenario6](Task-event-ci-scenario6.html)
* ci-scenario7   * [Patient-ci-scenario7](Patient-ci-scenario7.html)
* ci-scenario7   * [Task-event-ci-scenario7](Task-event-ci-scenario7.html)
* ci-scenario7   * [Task-request-ci-scenario7](Task-request-ci-scenario7.html)

### Do not collect information

* [Library](Library-donotcollectinformation-library.html)
* [ActivityDefinition](ActivityDefinition-activity-example-donotcollectinformation-ad.html)
* [PlanDefinition](PlanDefinition-activity-example-donotcollectinformation-pd.html)

* dnci-scenario1 * [Patient-dnci-scenario1](Patient-dnci-scenario1.html)
* dnci-scenario1 * [Task-event-dnci-scenario1](Task-event-dnci-scenario1.html)
* dnci-scenario2 * [Patient-dnci-scenario2](Patient-dnci-scenario2.html)
* dnci-scenario2 * [Task-event-dnci-scenario2](Task-event-dnci-scenario2.html)
* dnci-scenario2 * [Task-request-dnci-scenario2](Task-request-dnci-scenario2.html)
* dnci-scenario3 * [Patient-dnci-scenario3](Patient-dnci-scenario3.html)
* dnci-scenario3 * [Task-event-dnci-scenario3](Task-event-dnci-scenario3.html)
* dnci-scenario3 * [Task-request-dnci-scenario3](Task-request-dnci-scenario3.html)
* dnci-scenario4 * [Patient-dnci-scenario4](Patient-dnci-scenario4.html)
* dnci-scenario4 * [Task-request-dnci-scenario4](Task-request-dnci-scenario4.html)
* dnci-scenario5 * [Patient-dnci-scenario5](Patient-dnci-scenario5.html)
* dnci-scenario5 * [Task-request-dnci-scenario5](Task-request-dnci-scenario5.html)
* dnci-scenario5 * [Task-request-stop-dnci-scenario5](Task-request-stop-dnci-scenario5.html)
* dnci-scenario6 * [Patient-dnci-scenario6](Patient-dnci-scenario6.html)
* dnci-scenario6 * [Task-request-dnci-scenario6](Task-request-dnci-scenario6.html)
* dnci-scenario6 * [Task-request-stop-dnci-scenario6](Task-request-stop-dnci-scenario6.html)
* dnci-scenario7 * [Patient-dnci-scenario7](Patient-dnci-scenario7.html)
* dnci-scenario7 * [Task-event-dnci-scenario7](Task-event-dnci-scenario7.html)
* dnci-scenario8 * [Communication-scenario8](Communication-scenario8.html)
* dnci-scenario8 * [Patient-dnci-scenario8](Patient-dnci-scenario8.html)
* dnci-scenario8 * [QuestionnaireResponse-dnci-scenario8](QuestionnaireResponse-dnci-scenario8.html)
* dnci-scenario8 * [Task-event-dnci-scenario8](Task-event-dnci-scenario8.html)
* dnci-scenario9 * [Patient-dnci-scenario9](Patient-dnci-scenario9.html)

### Order a medication

* [OrderMedication Library](Library-ordermedication-library.html)
* [OrderMedication ActivityDefinition](ActivityDefinition-activity-example-ordermedication-ad.html)
* [OrderMedication PlanDefinition](PlanDefinition-activity-example-ordermedication-pd.html)

* om-scenario1   * [Patient-om-scenario1](Patient-om-scenario1.html)
* om-scenario2   * [MedicationRequest-om-scenario2](MedicationRequest-om-scenario2.html)
* om-scenario2   * [Patient-om-scenario2](Patient-om-scenario2.html)
* om-scenario3   * [MedicationRequest-om-scenario3](MedicationRequest-om-scenario3.html)
* om-scenario3   * [Patient-om-scenario3](Patient-om-scenario3.html)
* om-scenario4   * [MedicationDispense-om-scenario4](MedicationDispense-om-scenario4.html)
* om-scenario4   * [Patient-om-scenario4](Patient-om-scenario4.html)
* om-scenario5   * [MedicationDispense-om-scenario5](MedicationDispense-om-scenario5.html)
* om-scenario5   * [MedicationRequest-om-scenario5](MedicationRequest-om-scenario5.html)
* om-scenario5   * [Patient-om-scenario5](Patient-om-scenario5.html)
* om-scenario6   * [MedicationDispense-om-scenario6](MedicationDispense-om-scenario6.html)
* om-scenario6   * [Patient-om-scenario6](Patient-om-scenario6.html)
* om-scenario7   * [MedicationDispense-om-scenario7](MedicationDispense-om-scenario7.html)
* om-scenario7   * [MedicationRequest-om-scenario7](MedicationRequest-om-scenario7.html)
* om-scenario7   * [Patient-om-scenario7](Patient-om-scenario7.html)

### Dispense a medication

* [DispenseMedication Library](Library-dispensemedication-library.html)
* [DispenseMedication ActivityDefinition](ActivityDefinition-activity-example-dispensemedication-ad.html)
* [DispenseMedication PlanDefinition](PlanDefinition-activity-example-dispensemedication-pd.html)

* dm-scenario1   * [MedicationRequest-dm-scenario1](MedicationRequest-dm-scenario1.html)
* dm-scenario1   * [Patient-dm-scenario1](Patient-dm-scenario1.html)
* dm-scenario2   * [MedicationRequest-dm-scenario2](MedicationRequest-dm-scenario2.html)
* dm-scenario2   * [Patient-dm-scenario2](Patient-dm-scenario2.html)
* dm-scenario2   * [Task-request-dm-scenario2](Task-request-dm-scenario2.html)
* dm-scenario3   * [MedicationRequest-dm-scenario3](MedicationRequest-dm-scenario3.html)
* dm-scenario3   * [Patient-dm-scenario3](Patient-dm-scenario3.html)
* dm-scenario3   * [Task-request-dm-scenario3](Task-request-dm-scenario3.html)
* dm-scenario4   * [MedicationDispense-dm-scenario4](MedicationDispense-dm-scenario4.html)
* dm-scenario4   * [MedicationRequest-dm-scenario4](MedicationRequest-dm-scenario4.html)
* dm-scenario4   * [Patient-dm-scenario4](Patient-dm-scenario4.html)
* dm-scenario5   * [MedicationDispense-dm-scenario5](MedicationDispense-dm-scenario5.html)
* dm-scenario5   * [MedicationRequest-dm-scenario5](MedicationRequest-dm-scenario5.html)
* dm-scenario5   * [Patient-dm-scenario5](Patient-dm-scenario5.html)
* dm-scenario5   * [Task-request-dm-scenario5](Task-request-dm-scenario5.html)
* dm-scenario6   * [MedicationDispense-dm-scenario6](MedicationDispense-dm-scenario6.html)
* dm-scenario6   * [MedicationRequest-dm-scenario6](MedicationRequest-dm-scenario6.html)
* dm-scenario6   * [Patient-dm-scenario6](Patient-dm-scenario6.html)
* dm-scenario7   * [MedicationDispense-dm-scenario7](MedicationDispense-dm-scenario7.html)
* dm-scenario7   * [MedicationRequest-dm-scenario7](MedicationRequest-dm-scenario7.html)
* dm-scenario7   * [Patient-dm-scenario7](Patient-dm-scenario7.html)
* dm-scenario7   * [Task-request-dm-scenario7](Task-request-dm-scenario7.html)

### Administer a medication

* [AdministerMedication Library](Library-administermedication-library.html)
* [AdministerMedication ActivityDefinition](ActivityDefinition-activity-example-administermedication-ad.html)
* [AdministerMedication PlanDefinition](PlanDefinition-activity-example-administermedication-pd.html)

* am-scenario1   * [MedicationRequest-am-scenario1](MedicationRequest-am-scenario1.html)
* am-scenario1   * [Patient-am-scenario1](Patient-am-scenario1.html)
* am-scenario2   * [MedicationRequest-am-scenario2](MedicationRequest-am-scenario2.html)
* am-scenario2   * [Patient-am-scenario2](Patient-am-scenario2.html)
* am-scenario2   * [Task-request-am-scenario2](Task-request-am-scenario2.html)
* am-scenario3   * [MedicationRequest-am-scenario3](MedicationRequest-am-scenario3.html)
* am-scenario3   * [Patient-am-scenario3](Patient-am-scenario3.html)
* am-scenario3   * [Task-request-am-scenario3](Task-request-am-scenario3.html)
* am-scenario4   * [MedicationAdministration-am-scenario4](MedicationAdministration-am-scenario4.html)
* am-scenario4   * [MedicationRequest-am-scenario4](MedicationRequest-am-scenario4.html)
* am-scenario4   * [Patient-am-scenario4](Patient-am-scenario4.html)
* am-scenario5   * [MedicationAdministration-am-scenario5](MedicationAdministration-am-scenario5.html)
* am-scenario5   * [MedicationRequest-am-scenario5](MedicationRequest-am-scenario5.html)
* am-scenario5   * [Patient-am-scenario5](Patient-am-scenario5.html)
* am-scenario5   * [Task-request-am-scenario5](Task-request-am-scenario5.html)
* am-scenario6   * [MedicationAdministration-am-scenario6](MedicationAdministration-am-scenario6.html)
* am-scenario6   * [MedicationRequest-am-scenario6](MedicationRequest-am-scenario6.html)
* am-scenario6   * [Patient-am-scenario6](Patient-am-scenario6.html)
* am-scenario7   * [MedicationAdministration-am-scenario7](MedicationAdministration-am-scenario7.html)
* am-scenario7   * [MedicationRequest-am-scenario7](MedicationRequest-am-scenario7.html)
* am-scenario7   * [Patient-am-scenario7](Patient-am-scenario7.html)
* am-scenario7   * [Task-request-am-scenario7](Task-request-am-scenario7.html)

### Document a medication

* [DocumentMedication Library](Library-documentmedication-library.html)
* [DocumentMedication ActivityDefinition](ActivityDefinition-activity-example-documentmedication-ad.html)
* [DocumentMedication PlanDefinition](PlanDefinition-activity-example-documentmedication-pd.html)

* dcm-scenario1  * [MedicationRequest-dcm-scenario1](MedicationRequest-dcm-scenario1.html)
* dcm-scenario1  * [Patient-dcm-scenario1](Patient-dcm-scenario1.html)
* dcm-scenario2  * [MedicationRequest-dcm-scenario2](MedicationRequest-dcm-scenario2.html)
* dcm-scenario2  * [Patient-dcm-scenario2](Patient-dcm-scenario2.html)
* dcm-scenario2  * [Task-request-dcm-scenario2](Task-request-dcm-scenario2.html)
* dcm-scenario3  * [MedicationRequest-dcm-scenario3](MedicationRequest-dcm-scenario3.html)
* dcm-scenario3  * [Patient-dcm-scenario3](Patient-dcm-scenario3.html)
* dcm-scenario3  * [Task-request-dcm-scenario3](Task-request-dcm-scenario3.html)
* dcm-scenario4  * [MedicationRequest-dcm-scenario4](MedicationRequest-dcm-scenario4.html)
* dcm-scenario4  * [MedicationStatement-dcm-scenario4](MedicationStatement-dcm-scenario4.html)
* dcm-scenario4  * [Patient-dcm-scenario4](Patient-dcm-scenario4.html)
* dcm-scenario5  * [MedicationRequest-dcm-scenario5](MedicationRequest-dcm-scenario5.html)
* dcm-scenario5  * [MedicationStatement-dcm-scenario5](MedicationStatement-dcm-scenario5.html)
* dcm-scenario5  * [Patient-dcm-scenario5](Patient-dcm-scenario5.html)
* dcm-scenario5  * [Task-request-dcm-scenario5](Task-request-dcm-scenario5.html)
* dcm-scenario6  * [MedicationRequest-dcm-scenario6](MedicationRequest-dcm-scenario6.html)
* dcm-scenario6  * [MedicationStatement-dcm-scenario6](MedicationStatement-dcm-scenario6.html)
* dcm-scenario6  * [Patient-dcm-scenario6](Patient-dcm-scenario6.html)
* dcm-scenario7  * [MedicationRequest-dcm-scenario7](MedicationRequest-dcm-scenario7.html)
* dcm-scenario7  * [MedicationStatement-dcm-scenario7](MedicationStatement-dcm-scenario7.html)
* dcm-scenario7  * [Patient-dcm-scenario7](Patient-dcm-scenario7.html)
* dcm-scenario7  * [Task-request-dcm-scenario7](Task-request-dcm-scenario7.html)

### Recommend an immunization

* [RecommendImmunization Library](Library-recommendimmunization-library.html)
* [RecommendImmunization ActivityDefinition](ActivityDefinition-activity-example-recommendimmunization-ad.html)
* [RecommendImmunization PlanDefinition](PlanDefinition-activity-example-recommendimmunization-pd.html)

* ri-scenario1   * [Patient-ri-scenario1](Patient-ri-scenario1.html)
* ri-scenario2   * [ImmunizationRecommendation-ri-scenario2](ImmunizationRecommendation-ri-scenario2.html)
* ri-scenario2   * [Patient-ri-scenario2](Patient-ri-scenario2.html)
* ri-scenario4   * [Immunization-ri-scenario4](Immunization-ri-scenario4.html)
* ri-scenario4   * [Patient-ri-scenario4](Patient-ri-scenario4.html)

### Order a service

* [OrderService Library](Library-orderservice-library.html)
* [OrderService ActivityDefinition](ActivityDefinition-activity-example-orderservice-ad.html)
* [OrderService PlanDefinition](PlanDefinition-activity-example-orderservice-pd.html)

* os-scenario1   * [Patient-os-scenario1](Patient-os-scenario1.html)
* os-scenario2   * [Patient-os-scenario2](Patient-os-scenario2.html)
* os-scenario2   * [ServiceRequest-os-scenario2](ServiceRequest-os-scenario2.html)
* os-scenario4   * [Patient-os-scenario4](Patient-os-scenario4.html)
* os-scenario4   * [Procedure-os-scenario4](Procedure-os-scenario4.html)

### Enroll a patient

* [EnrollPatient Library](Library-enrollment-library.html)
* [EnrollPatient ActivityDefinition](ActivityDefinition-activity-example-enrollment-ad.html)
* [EnrollPatient PlanDefinition](PlanDefinition-activity-example-enrollment-pd.html)

* ep-scenario1   * [Patient-ep-scenario1](Patient-ep-scenario1.html)
* ep-scenario2   * [Patient-ep-scenario2](Patient-ep-scenario2.html)
* ep-scenario2   * [Task-request-ep-scenario2](Task-request-ep-scenario2.html)
* ep-scenario4   * [Condition-ep-scenario4](Condition-ep-scenario4.html)
* ep-scenario4   * [Encounter-ep-scenario4](Encounter-ep-scenario4.html)
* ep-scenario4   * [EpisodeOfCare-ep-scenario4](EpisodeOfCare-ep-scenario4.html)
* ep-scenario4   * [Patient-ep-scenario4](Patient-ep-scenario4.html)
* ep-scenario4   * [Task-event-ep-scenario4](Task-event-ep-scenario4.html)

### Generate a report

* [GenerateReport Library](Library-generatereport-library.html)
* [GenerateReport ActivityDefinition](ActivityDefinition-activity-example-generatereport-ad.html)
* [GenerateReport PlanDefinition](PlanDefinition-activity-example-generatereport-pd.html)

* gr-scenario1   * [Patient-gr-scenario1](Patient-gr-scenario1.html)
* gr-scenario2   * [Patient-gr-scenario2](Patient-gr-scenario2.html)
* gr-scenario2   * [Task-request-gr-scenario2](Task-request-gr-scenario2.html)
* gr-scenario4   * [MeasureReport-gr-scenario4](MeasureReport-gr-scenario4.html)
* gr-scenario4   * [Patient-gr-scenario4](Patient-gr-scenario4.html)
* gr-scenario4   * [Task-event-gr-scenario4](Task-event-gr-scenario4.html)

### Propose a diagnosis

* [ProposeDiagnosis Library](Library-proposediagnosis-library.html)
* [ProposeDiagnosis ActivityDefinition](ActivityDefinition-activity-example-proposediagnosis-ad.html)
* [ProposeDiagnosis PlanDefinition](PlanDefinition-activity-example-proposediagnosis-pd.html)

* pd-scenario1   * [Patient-pd-scenario1](Patient-pd-scenario1.html)
* pd-scenario2   * [Patient-pd-scenario2](Patient-pd-scenario2.html)
* pd-scenario2   * [Task-request-pd-scenario2](Task-request-pd-scenario2.html)
* pd-scenario4   * [Condition-pd-scenario4](Condition-pd-scenario4.html)
* pd-scenario4   * [Patient-pd-scenario4](Patient-pd-scenario4.html)
* pd-scenario4   * [Task-event-pd-scenario4](Task-event-pd-scenario4.html)

### Record a detected issue

* [RecordDetectedIssue Library](Library-recorddetectedissue-library.html)
* [RecordDetectedIssue ActivityDefinition](ActivityDefinition-activity-example-recorddetectedissue-ad.html)
* [RecordDetectedIssue PlanDefinition](PlanDefinition-activity-example-recorddetectedissue-pd.html)

* di-scenario1   * [Patient-di-scenario1](Patient-di-scenario1.html)
* di-scenario2   * [Patient-di-scenario2](Patient-di-scenario2.html)
* di-scenario2   * [Task-request-di-scenario2](Task-request-di-scenario2.html)
* di-scenario4   * [DetectedIssue-di-scenario4](DetectedIssue-di-scenario4.html)
* di-scenario4   * [Patient-di-scenario4](Patient-di-scenario4.html)
* di-scenario4   * [Task-event-di-scenario4](Task-event-di-scenario4.html)

### Record an inference

* [RecordInference Library](Library-recordinference-library.html)
* [RecordInference ActivityDefinition](ActivityDefinition-activity-example-recordinference-ad.html)
* [RecordInference PlanDefinition](PlanDefinition-activity-example-recordinference-pd.html)

* inf-scenario1  * [Patient-inf-scenario1](Patient-inf-scenario1.html)
* inf-scenario2  * [Patient-inf-scenario2](Patient-inf-scenario2.html)
* inf-scenario2  * [Task-request-inf-scenario2](Task-request-inf-scenario2.html)
* inf-scenario4  * [Observation-inf-scenario4](Observation-inf-scenario4.html)
* inf-scenario4  * [Patient-inf-scenario4](Patient-inf-scenario4.html)
* inf-scenario4  * [Task-event-inf-scenario4](Task-event-inf-scenario4.html)

### Report a flag

* [ReportFlag Library](Library-reportflag-library.html)
* [ReportFlag ActivityDefinition](ActivityDefinition-activity-example-reportflag-ad.html)
* [ReportFlag PlanDefinition](PlanDefinition-activity-example-reportflag-pd.html)

* rf-scenario1   * [Patient-rf-scenario1](Patient-rf-scenario1.html)
* rf-scenario2   * [Patient-rf-scenario2](Patient-rf-scenario2.html)
* rf-scenario2   * [Task-request-rf-scenario2](Task-request-rf-scenario2.html)
* rf-scenario4   * [Flag-rf-scenario4](Flag-rf-scenario4.html)
* rf-scenario4   * [Patient-rf-scenario4](Patient-rf-scenario4.html)
* rf-scenario4   * [Task-event-rf-scenario4](Task-event-rf-scenario4.html)

## Packaging

To illustrate how artifact packaging works, this example includes a packaging of
the AdministerMedication example:

|Resource|Description|
|---|---|
|[Library-activity-example-administermedication](Library-activity-example-administermedication-library.html)|Asset collection detailing the knowledge artifacts in the AdministerMedication example|
|[Bundle-activity-example-administermedication](Bundle-activity-example-administermedication-bundle.html)|Bundle for the asset collection including all the artifacts, packaged with a single test case example|
|[GuidanceResponse-am-scenario7](GuidanceResponse-am-scenario7.html)|Expected results for the am-scenario7 test case|
|[Bundle-am-scenario7](Bundle-am-scenario7.html)|Test case bundle for the am-scenario7 test case for the AdministerMedication example|
