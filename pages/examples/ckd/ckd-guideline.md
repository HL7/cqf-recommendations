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
 
| CKD Guideline Algorithm |
| --- |
| ![CKD guideline algorithm](images/ckd-cpg-algorithm.png) |


## Guideline Recommendations
The following CKD guideline recommendations are included in this example:

| Recommendation | Strength |
| We suggest that periodic evaluation for CKD be considered in patients with the following:
* Diabetes, hypertension, other end organ disease (e.g., chronic heart failure [CHF]), or a personal or family history of kidney disease
* Systemic illness (e.g., human immunodeficiency virus [HIV], systemic lupus erythematosus, multiple myeloma)
* History of acute kidney injury (AKI) (e.g., acute tubular necrosis, urinary tract obstruction, interstitial nephritis)
* Elderly patients
* Races and ethnicities associated with increased risk (e.g., African Americans, Hispanics, Native Americans) | Weak For |
| In adult patients with stages 1-4 CKD, we recommend that blood pressure targets should be less than 140/90 mmHg | Strong For |
| In patients with diabetes, hypertension, and albuminuria, we recommend the use of an ACEI or ARB to slow the progression of CKD, unless there is documentation of intolerance. | Strong For |
| We recommend that all patients with CKD who are not on dialysis and have no known history of coronary artery disease be assessed for 10-year CVD risk using a validated risk calculator for primary prevention. If at risk (as defined in the VA/DoD Management of Dyslipidemia guideline), we recommend use of at least a low dose statin. | Strong For |
| We suggest offering supplemental vitamin D to correct vitamin D deficiency in patients with CKD stages 3 or 4. | Weak For |
| We suggest not offering phosphate binders to patients with stage 3 and 4 CKD with normal serum phosphorous. | Weak Against |
