---
layout: example-default
title: Chronic Kidney Disease (CKD) Guideline Example
---
# Chronic Disease Management - Chronic Kidney Disease (CKD)

* [Overview](#overview)
* [Chronic Kidney Disease (CKD) Guidelines](#chronic-kidney-disease-ckd-guidelines)
  * [KDIGO](#kdigo-international-guideline)
  * [VA/DoD](#vadod-clinical-practice-guideline-for-ckd)
* [Guideline Recommendations](#guideline-recommendations)

## Overview
The system-wide goal of evidence-based guidelines is to improve the patient’s health and well-being by guiding health providers who are taking care of patients
with chronic health conditions along the management pathways that are supported by evidence and are thus considered the highest standard of care.

The expected outcome of successful implementation of this guideline is to:
* Formulate an efficient and effective assessment of the patient's condition
* Optimize the use of therapy to reduce disease progression, reduce symptoms of CKD, and
enhance patient functionality
* Minimize preventable complications and morbidity
* Emphasize the use of personalized, proactive, patient-driven care

This clinical use case example is based on the [NIH Chronic Kidney Disease (CKD) Care Plan project](https://www.niddk.nih.gov/health-information/communication-programs/nkdep/working-groups/health-information-technology/development-electronic-ckd-care-plan).
* Persona descriptions for patients with CKD and their provider care team members are available from the NIH site:
  * [Patient personas](https://www.niddk.nih.gov/-/media/Files/Health-Information/Communication-Programs/NKDEP/Patient_Personas_508.pdf?la=en); sample FHIR resources in this guide are based on Betsy Johnson's persona
  * [Provider personas](https://www.niddk.nih.gov/-/media/Files/Health-Information/Communication-Programs/NKDEP/Provider_Personas_508.pdf?la=en) for six members of a CKD patient's care team
* A draft set of data elements and terminology codes are also available for CKD care management, created by the NIH CKD Care Plan Working Group
  * [CKD Data Elements](https://www.niddk.nih.gov/health-information/communication-programs/nkdep/working-groups/health-information-technology/development-electronic-ckd-care-plan#draftSet)

## Chronic Kidney Disease (CKD) Guidelines
The guidelines described in this example follow a recommended clinical workflow for diagnosis and care management. The steps in this workflow will be harmonized with
other sources to specify an overall pattern recommended for all clinical practice guidelines that follow this implementation guide. The pattern includes these general steps:
1. Screen At-Risk Populations
2. Evalute Urgent/Emergent Conditions
3. Criteria for Confirmed Diagnosis
4. Determine Stage of Disease
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

<table>
<tr><th>Strength</th>
<th>Recommendation</th></tr>

<tr><td>Weak For</td>
<td>
We suggest that periodic evaluation for CKD be considered in patients with the following: <ul>
<li>Diabetes, hypertension, other end organ disease (e.g., chronic heart failure [CHF]), or a personal or family history of kidney disease</li>
<li>Systemic illness (e.g., human immunodeficiency virus [HIV], systemic lupus erythematosus, multiple myeloma)</li>
<li>History of acute kidney injury (AKI) (e.g., acute tubular necrosis, urinary tract obstruction, interstitial nephritis)</li>
<li>Elderly patients</li>
<li>Races and ethnicities associated with increased risk (e.g., African Americans, Hispanics, Native Americans)</li>
</ul>
</td></tr>
<tr>
<td>Weak For</td>
<td>In patients with stage 3 and 4 CKD, we suggest a protein diet of 0.6 to 0.8 g/kg/day as it may slow the decline in glomerular filtration rate (GFR) and progression to end-stage renal disease (ESRD).</td>
</tr>
<tr>
<td>Strong For</td>
<td>In adult patients with stages 1-4 CKD, we recommend that blood pressure targets should be less than 140/90 mmHg.</td>
</tr>
<tr>
<td>Strong For</td>
<td>In patients with diabetes, hypertension, and albuminuria, we recommend the use of an ACEI or ARB to slow the progression of CKD, unless there is documentation of intolerance.</td>
</tr>
<tr>
<td>Strong For</td>
<td>We recommend that all patients with CKD who are not on dialysis and have no known history of coronary artery disease be assessed for 10-year CVD risk using a validated risk calculator for primary prevention. If at risk (as defined in the VA/DoD Management of Dyslipidemia guideline), we recommend use of at least a low dose statin.</td>
</tr>
<tr>
<td>Weak For</td>
<td>We suggest offering supplemental vitamin D to correct vitamin D deficiency in patients with CKD stages 3 or 4.</td>
</tr>
<tr>
<td>Weak Against</td>
<td>We suggest not offering phosphate binders to patients with stage 3 and 4 CKD with normal serum phosphorous.</td>
</tr>
</table>
