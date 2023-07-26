This is an example computable clinical practice guideline (CPG) illustrating a congestive
heart failure (CHF) care pathway.

The following diagram illustrates a Case/Plan Summary View for the guideline, showing the
major components and how they fit together:

<div>
    <img src="CHFCasePlanSummaryView.png" alt="CHF Case Plan Summary View" width="450"/>
</div>

Overall, this is a patient-centric view, from the perspective of the congestive heart
failure pathway, showing how the patient is progressing along the pathway, and providing
the most relevant information and indicators.

The pathway has two strategies, CHF Daily Management, and CHF Hypervolemia. These
strategies are then made up of recommendations. The Daily Management strategy is
made up of the Weight, Weight Change, Urine Out, and Net IO's recommendations, and
the Hypervolemia strategy is made up of the JVP, O2 Sat, Potassium, Creatinine, eGFR,
LASIX, and Cardiology Consultation recommendations.

The timeline view in the center depicts patient events, proposals, and planned items as
determined by the overall care pathway. Along the left-side of the timeline, the
pathway event (or _case feature_) is named, and along the right-side of the timeline,
a _goal_ is provided for that case feature. The goal is defined by the pathway as part
of the _recommendation_ associated with that case feature.

Within the timeline view, events in green indicate _metrics_ that are on-pathway,
while events in grey indicate case features that aren't reported as metrics. Items
in yellow are cautions that indicate actions should be considered, (such as measuring
Jugular Venous Pressure), while events in red indicate values that are off-pathway
or indicate immediate attention is needed.

The example CPG artifacts are organized as follows:

### Pathway

* [CHF Pathway](PlanDefinition-chf-pathway.html)
    * [CHF Daily Management Strategy](PlanDefinition-chf-daily-management.html)
        * [CHF Bodyweight Recommendation](PlanDefinition-chf-bodyweight.html)
        * [CHF Bodyweight Change Recommendation](PlanDefinition-chf-bodyweight-change.html)
        * [CHF Urine Out Recommendation](PlanDefinition-chf-urine-out.html)
        * [CHF Net Intake/Output Recommendation](PlanDefinition-chf-net-io.html)
    * [CHF Hypervolemia](PlanDefinition-chf-hypervolemia.html)
        * [CHF Jugular Venous Pressure Recommendation](PlanDefinition-chf-jvp.html)
        * [CHF Oxygen Saturation Recommendation](PlanDefinition-chf-o2-sat.html)
        * [CHF Potassium Recommendation](PlanDefinition-chf-potassium.html)
        * [CHF Creatinine Recommendation](PlanDefinition-chf-creatinine.html)
        * [CHF eGFR Recommendation](PlanDefinition-chf-egfr.html)
        * [CHF LASIX Recommendation](PlanDefinition-chf-lasix.html)
        * [CHF Cardiology Consultation Recommendation](PlanDefinition-chf-cardiology-consultation.html)

#### Case Features

* [CHF Bodyweight Change](StructureDefinition-chf-bodyweight-change.html)
* [CHF Bodyweight](StructureDefinition-chf-bodyweight.html)
* [CHF Cardiology Consult Request](StructureDefinition-chf-cardiology-consult-request.html)
* [CHF Cardiology Consult](StructureDefinition-chf-cardiology-consult.html)
* [CHF Creatinine](StructureDefinition-chf-creatinine.html)
* [CHF eGFR](StructureDefinition-chf-egfr.html)
* [CHF Jugular Venous Pressure Request](StructureDefinition-chf-jvp-request.html)
* [CHF Jugular Venous Pressure](StructureDefinition-chf-jvp.html)
* [CHF LASIX IV Administration](StructureDefinition-chf-lasix-iv-administration.html)
* [CHF LASIX IV Request](StructureDefinition-chf-lasix-iv-request.html)
* [CHF LASIX PO Administration](StructureDefinition-chf-lasix-po-administration.html)
* [CHF LASIX PO Request](StructureDefinition-chf-lasix-po-request.html)
* [CHF Net Intake/Output](StructureDefinition-chf-net-io.html)
* [CHF Oxygen Saturation Request](StructureDefinition-chf-o2-sat-request.html)
* [CHF Oxygen Saturation](StructureDefinition-chf-o2-sat.html)
* [CHF Potassium](StructureDefinition-chf-potassium.html)
* [CHF Urine Out](StructureDefinition-chf-urine-out.html)

#### Logic

* [CHF Logic](Library-CHF.html)

#### Metrics

* [CHF Bodyweight Change Metric](Measure-chf-bodyweight-change.html)
* [CHF Bodyweight Metric](Measure-chf-bodyweight.html)
* [CHF Urine Out Metric](Measure-chf-urine-out.html)

### Example Case

For the example case, a [Patient](Patient-chf-scenario1.html) is defined with
a [Case](EpisodeOfCare-chf-scenario1.html), an [Encounter](Encounter-chf-scenario1.html),
and a [Condition](Condition-chf-scenario1.html), establishing the patient
as having an admitting diagnosis of Congestive Heart Failure. This meets the `Inclusion Criteria`
defined by the group, and results in the patient being added to the pathway, and
included as a member of the [CHF Group](Group-chf-scenario1.html). This
results in the creation of a [CarePlan](CarePlan-chf-scenario1.html), with
[Daily Management](RequestGroup-chf-scenario1-daily-management.html) and
[Hypervolemia](RequestGroup-chf-scenario1-hypervolemia.html) strategies. Each of these
strategies establish actions and goals for each of the recommendations.

The diagram above is a snapshot of the Case/Plan Summary View at 9:41 AM on February 3rd, 2019, the
4th day of the encounter.

Weight
CaseFeatureDefinition: Weight in kg
Observation: 96.9kg @2019-02-02T07:00
Observation: 95.7kg @2019-02-03T07:00
Goal: 92kg
Metric: 95.7kg

Weight Change
CaseFeatureDefinition: Weight change per day
Observation: -1.2kg @2019-02-03T07:00
Goal: 0.5..1.5 kg/d (absolute value)
Metric: -1.2kg @2019-02-03T07:00

Urine Out
CaseFeatureDefinition: Urine Out Observation Daily
Observation: 3.8L/24hr (1.9L/8hr) @2019-02-02T07:00..2019-02-03T07:00
Goal: 3..5 L/day

Net IO's
CaseFeatureDefinition: Net IO's Observation Daily
Observation: -2.1L/24hr (-1.2L/8hr) @2019-02-02T07:00..2019-02-03T07:00

JVP
ServiceRequest: Record Jugular Venous Pressure (in cmH2O)
  Sometime between @2019-02-03
  Pertinents:
    JVP 4-day: 9.1 8.5 8.4 8.2
    WT 4-day: 96 95.4 96.9 95.7
    24hr UOP: 2.1L 3.1L 2.9L 4.1L
    LASIX: 40 mg IV x10 @2019-01-31..2019-02-03

O2 Sat:
CaseFeatureDefinition:
Observation: 87% @2019-02-03T05:00 (Critical Low)
Observation: 93% @2019-02-03T09:41
Goal: < 8.0cmH2O
Proposed: @2019-02-03T13:00

Potassium:
CaseFeatureDefinition:
Observation: 3.9 mEq/L
Goal: 3.5..5.0

Creatinine:
CaseFeatureDefinition:
Observation: 0.9 mg/dL @2019-02-03T09:41
Goal: < 1.2 mg/dL

eGFR:
CaseFeatureDefinition:
Observation: 65 mL/mm/m2 @2019-02-03T09:41
Goal: > 60 mL/mm/m2

LASIX IV:
CaseFeatureDefinition
MedicationAdministration: 40 mg
ServiceRequest: Stop LASIX IV @2019-02-03T13:00

LASIX PO:
CaseFeatureDefinition
MedicationRequest: Transition to LASIX PO @2019-02-03T13:00

HCTZX:
CaseFeatureDefinition
PO QD @2019-02-03T07:00

Cardiology Consultation:
Case Feature Definition:
Service Request: Within @2019-02-03T11:00..2019-02-04T11:00

History:
Condition: Congestive Heart Failure @2015-08-20T12:11
Procedure: Electrocardiogram @2018-08-24T09:17
Encounter: History & Physical @2018-11-09T16:03
Composition: Cardiology Consult @2018-11-10T11:31
Composition: Discharge Summary @2018-11-11T13:52
CarePlan: Heart Failure Care Pathway (discharged) @2018-11-11T17:43

### Example Case Index

The following index lists all the case-specific resources in this example:

|Resource Type|Resource|
|---|---|
|CarePlan|[chf-scenario1](CarePlan-chf-scenario1.html)|
|CareTeam|[chf-scenario1](CareTeam-chf-scenario1.html)|
|ClinicalImpression|[chf-scenario1](ClinicalImpression-chf-scenario1.html)|
|Composition|[chf-scenario1-caseplanprogressingnote](Composition-chf-scenario1-caseplanprogressingnote.html)|
|Composition|[chf-scenario1-caseplansummary](Composition-chf-scenario1-caseplansummary.html)|
|Composition|[chf-scenario1-casesummary](Composition-chf-scenario1-casesummary.html)|
|Condition|[chf-scenario1](Condition-chf-scenario1.html)|
|Encounter|[chf-scenario1](Encounter-chf-scenario1.html)|
|EpisodeOfCare|[chf-scenario1](EpisodeOfCare-chf-scenario1.html)|
|Goal|[chf-scenario1-cardiology-consultation](Goal-chf-scenario1-cardiology-consultation.html)|
|Goal|[chf-scenario1-creatinine](Goal-chf-scenario1-creatinine.html)|
|Goal|[chf-scenario1-egfr](Goal-chf-scenario1-egfr.html)|
|Goal|[chf-scenario1-jvp](Goal-chf-scenario1-jvp.html)|
|Goal|[chf-scenario1-lasix-iv](Goal-chf-scenario1-lasix-iv.html)|
|Goal|[chf-scenario1-lasix-po](Goal-chf-scenario1-lasix-po.html)|
|Goal|[chf-scenario1-net-io](Goal-chf-scenario1-net-io.html)|
|Goal|[chf-scenario1-o2-sat](Goal-chf-scenario1-o2-sat.html)|
|Goal|[chf-scenario1-potassium](Goal-chf-scenario1-potassium.html)|
|Goal|[chf-scenario1-urine-out](Goal-chf-scenario1-urine-out.html)|
|Goal|[chf-scenario1-weight-change](Goal-chf-scenario1-weight-change.html)|
|Goal|[chf-scenario1-weight](Goal-chf-scenario1-weight.html)|
|Group|[chf-scenario1](Group-chf-scenario1.html)|
|Location|[chf-scenario1](Location-chf-scenario1.html)|
|MeasureReport|[chf-scenario1-bodyweight-change1](MeasureReport-chf-scenario1-bodyweight-change1.html)|
|MeasureReport|[chf-scenario1-bodyweight-change2](MeasureReport-chf-scenario1-bodyweight-change2.html)|
|MeasureReport|[chf-scenario1-bodyweight-change3](MeasureReport-chf-scenario1-bodyweight-change3.html)|
|MeasureReport|[chf-scenario1-bodyweight1](MeasureReport-chf-scenario1-bodyweight1.html)|
|MeasureReport|[chf-scenario1-bodyweight2](MeasureReport-chf-scenario1-bodyweight2.html)|
|MeasureReport|[chf-scenario1-bodyweight3](MeasureReport-chf-scenario1-bodyweight3.html)|
|MeasureReport|[chf-scenario1-bodyweight4](MeasureReport-chf-scenario1-bodyweight4.html)|
|MeasureReport|[chf-scenario1-urineout3](MeasureReport-chf-scenario1-urineout3.html)|
|MedicationAdministration|[chf-scenario1-lasix-iv](MedicationAdministration-chf-scenario1-lasix-iv.html)|
|MedicationAdministration|[chf-scenario1-lasix-po](MedicationAdministration-chf-scenario1-lasix-po.html)|
|MedicationRequest|[chf-scenario1-lasix-po](MedicationRequest-chf-scenario1-lasix-po.html)|
|MedicationRequest|[chf-scenario1-stop-lasix-iv](MedicationRequest-chf-scenario1-stop-lasix-iv.html)|
|Observation|[chf-scenario1-bodyweight-change1](Observation-chf-scenario1-bodyweight-change1.html)|
|Observation|[chf-scenario1-bodyweight-change2](Observation-chf-scenario1-bodyweight-change2.html)|
|Observation|[chf-scenario1-bodyweight-change3](Observation-chf-scenario1-bodyweight-change3.html)|
|Observation|[chf-scenario1-bodyweight1](Observation-chf-scenario1-bodyweight1.html)|
|Observation|[chf-scenario1-bodyweight2](Observation-chf-scenario1-bodyweight2.html)|
|Observation|[chf-scenario1-bodyweight3](Observation-chf-scenario1-bodyweight3.html)|
|Observation|[chf-scenario1-bodyweight4](Observation-chf-scenario1-bodyweight4.html)|
|Observation|[chf-scenario1-creatinine1](Observation-chf-scenario1-creatinine1.html)|
|Observation|[chf-scenario1-egfr1](Observation-chf-scenario1-egfr1.html)|
|Observation|[chf-scenario1-jvp1](Observation-chf-scenario1-jvp1.html)|
|Observation|[chf-scenario1-jvp2](Observation-chf-scenario1-jvp2.html)|
|Observation|[chf-scenario1-jvp3](Observation-chf-scenario1-jvp3.html)|
|Observation|[chf-scenario1-jvp4](Observation-chf-scenario1-jvp4.html)|
|Observation|[chf-scenario1-jvp5](Observation-chf-scenario1-jvp5.html)|
|Observation|[chf-scenario1-netio3](Observation-chf-scenario1-netio3.html)|
|Observation|[chf-scenario1-o2sat1](Observation-chf-scenario1-o2sat1.html)|
|Observation|[chf-scenario1-o2sat2](Observation-chf-scenario1-o2sat2.html)|
|Observation|[chf-scenario1-potassium1](Observation-chf-scenario1-potassium1.html)|
|Observation|[chf-scenario1-urineout3](Observation-chf-scenario1-urineout3.html)|
|Organization|[chf-scenario1](Organization-chf-scenario1.html)|
|Patient|[chf-scenario1](Patient-chf-scenario1.html)|
|PractitionerRole|[chf-scenario1](PractitionerRole-chf-scenario1.html)|
|Practitioner|[chf-scenario1](Practitioner-chf-scenario1.html)|
|Procedure|[chf-scenario1-cardiology-consult](Procedure-chf-scenario1-cardiology-consult.html)|
|RelatedPerson|[chf-scenario1](RelatedPerson-chf-scenario1.html)|
|RequestGroup|[chf-scenario1-daily-management](RequestGroup-chf-scenario1-daily-management.html)|
|RequestGroup|[chf-scenario1-hypervolemia](RequestGroup-chf-scenario1-hypervolemia.html)|
|ServiceRequest|[chf-scenario1-cardiology-consultation](ServiceRequest-chf-scenario1-cardiology-consultation.html)|
|ServiceRequest|[chf-scenario1-jvp](ServiceRequest-chf-scenario1-jvp.html)|
|ServiceRequest|[chf-scenario1-o2-sat](ServiceRequest-chf-scenario1-o2-sat.html)|

### Artifact Index

The following index lists all the artifacts (case-independent) in this example:

|Resource Type|Resource|
|---|---|
|ActivityDefinition|[chf-bodyweight-change](ActivityDefinition-chf-bodyweight-change.html)|
|ActivityDefinition|[chf-bodyweight](ActivityDefinition-chf-bodyweight.html)|
|ActivityDefinition|[chf-cardiology-consultation](ActivityDefinition-chf-cardiology-consultation.html)|
|ActivityDefinition|[chf-creatinine](ActivityDefinition-chf-creatinine.html)|
|ActivityDefinition|[chf-egfr](ActivityDefinition-chf-egfr.html)|
|ActivityDefinition|[chf-jvp](ActivityDefinition-chf-jvp.html)|
|ActivityDefinition|[chf-lasix-iv](ActivityDefinition-chf-lasix-iv.html)|
|ActivityDefinition|[chf-lasix-po](ActivityDefinition-chf-lasix-po.html)|
|ActivityDefinition|[chf-net-io](ActivityDefinition-chf-net-io.html)|
|ActivityDefinition|[chf-o2-sat](ActivityDefinition-chf-o2-sat.html)|
|ActivityDefinition|[chf-potassium](ActivityDefinition-chf-potassium.html)|
|ActivityDefinition|[chf-report-bodyweight-change](ActivityDefinition-chf-report-bodyweight-change.html)|
|ActivityDefinition|[chf-report-bodyweight](ActivityDefinition-chf-report-bodyweight.html)|
|ActivityDefinition|[chf-report-urine-out](ActivityDefinition-chf-report-urine-out.html)|
|ActivityDefinition|[chf-urine-out](ActivityDefinition-chf-urine-out.html)|
|CareTeam|[chf-careteamdefinition](CareTeam-chf-careteamdefinition.html)|
|CodeSystem|[chf-codes](CodeSystem-chf-codes.html)|
|GraphDefinition|[chf-caseplansummarydefinition](GraphDefinition-chf-caseplansummarydefinition.html)|
|GraphDefinition|[chf-casesummarydefinition](GraphDefinition-chf-casesummarydefinition.html)|
|Group|[chf-groupdefinition](Group-chf-groupdefinition.html)|
|ImplementationGuide|[chf](ImplementationGuide-chf.html)|
|Library|[CHF](Library-CHF.html)|
|Location|[chf-locationdefinition](Location-chf-locationdefinition.html)|
|Measure|[chf-bodyweight-change](Measure-chf-bodyweight-change.html)|
|Measure|[chf-bodyweight](Measure-chf-bodyweight.html)|
|Measure|[chf-urine-out](Measure-chf-urine-out.html)|
|PlanDefinition|[chf-bodyweight-change](PlanDefinition-chf-bodyweight-change.html)|
|PlanDefinition|[chf-bodyweight](PlanDefinition-chf-bodyweight.html)|
|PlanDefinition|[chf-cardiology-consultation](PlanDefinition-chf-cardiology-consultation.html)|
|PlanDefinition|[chf-creatinine](PlanDefinition-chf-creatinine.html)|
|PlanDefinition|[chf-daily-management](PlanDefinition-chf-daily-management.html)|
|PlanDefinition|[chf-egfr](PlanDefinition-chf-egfr.html)|
|PlanDefinition|[chf-hypervolemia](PlanDefinition-chf-hypervolemia.html)|
|PlanDefinition|[chf-jvp](PlanDefinition-chf-jvp.html)|
|PlanDefinition|[chf-lasix](PlanDefinition-chf-lasix.html)|
|PlanDefinition|[chf-net-io](PlanDefinition-chf-net-io.html)|
|PlanDefinition|[chf-o2-sat](PlanDefinition-chf-o2-sat.html)|
|PlanDefinition|[chf-pathway](PlanDefinition-chf-pathway.html)|
|PlanDefinition|[chf-potassium](PlanDefinition-chf-potassium.html)|
|PlanDefinition|[chf-urine-out](PlanDefinition-chf-urine-out.html)|
|PractitionerRole|[chf-practitionerroledefinition](PractitionerRole-chf-practitionerroledefinition.html)|
|StructureDefinition|[chf-bodyweight-change](StructureDefinition-chf-bodyweight-change.html)|
|StructureDefinition|[chf-bodyweight](StructureDefinition-chf-bodyweight.html)|
|StructureDefinition|[chf-cardiology-consult-request](StructureDefinition-chf-cardiology-consult-request.html)|
|StructureDefinition|[chf-cardiology-consult](StructureDefinition-chf-cardiology-consult.html)|
|StructureDefinition|[chf-creatinine](StructureDefinition-chf-creatinine.html)|
|StructureDefinition|[chf-egfr](StructureDefinition-chf-egfr.html)|
|StructureDefinition|[chf-jvp-request](StructureDefinition-chf-jvp-request.html)|
|StructureDefinition|[chf-jvp](StructureDefinition-chf-jvp.html)|
|StructureDefinition|[chf-lasix-iv-administration](StructureDefinition-chf-lasix-iv-administration.html)|
|StructureDefinition|[chf-lasix-iv-request](StructureDefinition-chf-lasix-iv-request.html)|
|StructureDefinition|[chf-lasix-po-administration](StructureDefinition-chf-lasix-po-administration.html)|
|StructureDefinition|[chf-lasix-po-request](StructureDefinition-chf-lasix-po-request.html)|
|StructureDefinition|[chf-net-io](StructureDefinition-chf-net-io.html)|
|StructureDefinition|[chf-o2-sat-request](StructureDefinition-chf-o2-sat-request.html)|
|StructureDefinition|[chf-o2-sat](StructureDefinition-chf-o2-sat.html)|
|StructureDefinition|[chf-potassium](StructureDefinition-chf-potassium.html)|
|StructureDefinition|[chf-urine-out](StructureDefinition-chf-urine-out.html)|
