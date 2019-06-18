---
layout: example-default
title: Chronic Kidney Disease (CKD) Guideline Example
---

## Overview
The system-wide goal of evidence-based guidelines is to improve the patient’s health and well-being by guiding health providers who are taking care of patients
with CKD along the management pathways that are supported by evidence and are thus considered the highest standard of care.

The expected outcome of successful implementation of this guideline is to:
* Formulate an efficient and effective assessment of the patient's condition
* Optimize the use of therapy to reduce disease progression, reduce symptoms of CKD, and
enhance patient functionality
* Minimize preventable complications and morbidity
* Emphasize the use of personalized, proactive, patient-driven care

This clinical use case example is based on the [NIH Chronic Kidney Disease (CKD) Care Plan project](https://www.niddk.nih.gov/health-information/communication-programs/nkdep/working-groups/health-information-technology/development-electronic-ckd-care-plan).
* Persona descriptions for patients with CKD and their provider care team members are available from the NIH site:
  * [Patient personas](https://www.niddk.nih.gov/-/media/Files/Health-Information/Communication-Programs/NKDEP/Patient_Personas_508.pdf?la=en); sample FHIR resources are based on Betsy Johnson's persona
  * [Provider personas](https://www.niddk.nih.gov/-/media/Files/Health-Information/Communication-Programs/NKDEP/Provider_Personas_508.pdf?la=en) for six members of a CKD patient's care team
* A draft set of data elements and terminology codes are also available for CKD care management, created by the NIH CKD Care Plan Working Group
  * [CKD Data Elements](https://www.niddk.nih.gov/health-information/communication-programs/nkdep/working-groups/health-information-technology/development-electronic-ckd-care-plan#draftSet)

## Chronic Kidney Disease (CKD) Guidelines
The guidelines described in this example follow a regular pattern for diagnosis and care management. The steps in this pattern will be harmonized with
other sources to specify an overall pattern recommendation for all clinical practice guidelines that follow this implementation guide. The pattern includes these general steps:
1. Screen At-Risk Populations
2. Evalute for Urgent/Emergent Conditions
3. Criteria for Confirmed Diagnosis
4. Stage of Disease
5. Strategies to Slow Progression
6. Recommendations for Specialist Consultation

### KDIGO International Guideline
The Kidney Disease: Improving Global Outcomes (KDIGO) 2012 Clinical Practice Guideline for the 
[Evaluation and Management of Chronic Kidney Disease (CKD)](https://kdigo.org/guidelines/ckd-evaluation-and-management/)


### VA/DoD Clinical Practice Guideline for CKD
[Management of Chronic Kidney Disease (CKD) in Primary Care (2014)](https://www.healthquality.va.gov/guidelines/cd/ckd/index.asp)

This guideline includes an algorithm which is designed to maximally facilitate clinical decision making for the
management of CKD. 
![CKD guideline algorithm](images/ckd-cpg-algorithm.png)


## Functional Description
This use case include sample FHIR resources for a fictitious patient named Betsy Johnson that illustrate evidence-based case for CKD with co-morbid conditions (Hyperteneion and Diabetes).
