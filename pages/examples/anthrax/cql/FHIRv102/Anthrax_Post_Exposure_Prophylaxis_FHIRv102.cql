/*  Library: Anthrax Post Exposure Prophylaxis (PEP) for Adults, FHIR DSTU2 data model.
    Author: CMS Alliance to Modernize Healthcare, operated by THE MITRE Corporation.

    (C) 2019 The MITRE Corporation. All Rights Reserved. Approved for Public Release: 19-2048. Distribution Unlimited.

    Change log:
    - Version 1.1.0: Updated output resources to align with draft profiles posted at:
    http://build.fhir.org/ig/HL7/cqf-recommendations/profiles.html
    Also refactored CQL to put CDC-specific functions in a seperate library.
*/
library Anthrax_Post_Exposure_Prophylaxis_Adults_FHIRv102 version '1.1.0'

/* ------------- REFERENCES ----------------------------------------------------
- Hendricks, K.A. et al., Centers for Disease Control and Prevention Expert Panel Meetings on Prevention and Treatment of Anthrax in Adults. Emerg Infect Dis, 20(20), Feb 2014.
- Hendricks, K.A. et al., Centers for Disease Control and Prevention Expert Panel Meetings on Prevention and Treatment of Anthrax in Adults: Technical Report. Emerg Infect Dis. 20(20), Feb 2014.
- Emergent BioSolutions, BioThrax Anthrax Vaccine Adsorbed (http://www.biothrax.com/whatisbiothrax/).
- Centers for Disease Control and Prevention, Ciprofloxacin for Post-Exposure Prophylaxis of Anthrax: Emergency Use Instructions for Healthcare Providers, 2017.
- Centers for Disease Control and Prevention. Doxycyxcline for Post-Exposure Prophylaxis of Anthrax: Emergency Use Instructions for Healthcare Providers, 2017.
- Public Health Information Network Vocabulary Access and Distribution System (PHIN VADS), PHVS_SignsSymptoms_Anthrax (OID 2.16.840.1.114222.4.11.3212), 2009.
- Meanye-Delman D et al., Special Considerations for Prophylaxis for and Treatment of Anthrax in Pregnant and Postpartum Women, Emerg Infect Dis, 20(2), 2014.
- Meanye-Delman D et al., Special Considerations for Prophylaxis for and Treatment of Anthrax in Pregnant and Postpartum Women: Technical Report, Emerg Infect Dis, 20(2), 2014.
- Wright, J.G et al., Use of Anthrax Vaccine in the United States: Recommendations of the Advisory Committee on Immunization Practices (ACIP), 2009, Morbidity and Mortality Weekly Report, July 23, 2010 / 59(RR06); 1-30.
*/

/* ------------- KEY ASSUMPTIONS -----------------------------------------------
1. Anthrax exposure represented by one of two codes in either a Condition or Observation FHIR DSTU2 resource. The parameter Exposure_Look_Back_Period controls how far back to filter potential exposure resources. Default is 60 days.
2. Asymptomatic represented by SNOMED-CT code 84387000 in an Observation FHIR DSTU2 resource. Asymptomatic Observation must occur on the same day or after the exposure date.
3. Existing antimicrobial Rx found by querying MedicationOrder and MedicationStatement FHIR DSTU2 resources.
4. Administration of the Anthrax vaccine represented by one of the sequential SNOMED-CT procedure codes. This is how past doses are discovered via querying for Procedure FHIR resources.
5. The recommended spacing between subsequent doses of the vaccine is controlled by the parameter Spacing_Between_Vaccine_Doses, which has a default value of two weeks. A patient undergoing Anthrax PEP will only be recommended their next vaccine dose if two weeks have elapsed since their last and if they have not received the recommended allotmant of three doses.
6. Pregnancy can be represented as an Observation or a Condition FHIR DSTU2 resource. Both types of resouces are examined to determine if the patient is pregnant.
7. Allergies are discovered by querying for AllergyIntolerance FHIR DSTU2 resources that contain ingredient/substance codes for any of the potentially recommended PEP treatments. This includes the antimicrobials, the vaccine, and latex.
8. Alerts are communicated via either DetectedIssue or Flag FHIR resources.
9. Aside from the alerts, the main output of this CDS is an order set. It is represented via FHIR STU3 resources (ActivityDefinition and PlanDefinition) due to lack of any appropriate FHIR DSTU2 resources. These will need to be translated at the local implementation level if FHIR STU3 is not supported.
10. This CDS outputs various FHIR resource objects. For the purposes of local FHIR references, it is assumed all generated FHIR resources will be returned in a single FHIR bundle.
*/

// Data model
using FHIR version '1.0.2'

// ------------- LIBRARIES --------------------------------------------------
// The CDS Connect Commons for FHIRv102 library provides functions representing
// commonly used CDS logic and patterns.
include CDS_Connect_Commons_for_FHIRv102 version '1.3.2' called C3F
// The FHIRHelpers library provides functions for working with FHIR resources.
include FHIRHelpers version '1.0.2' called FHIRHelpers
// More common logic for CDC CDS
include CDC_Common_Logic_FHIRv102 version '1.0.0' called CCL

// ------------- CODE SYSTEMS --------------------------------------------------
codesystem "LOINC": 'http://loinc.org'
codesystem "SNOMED-CT": 'http://snomed.info/sct'
codesystem "ICD-10-CM": 'http://hl7.org/fhir/sid/icd-10-cm'
codesystem "RXNORM": 'http://www.nlm.nih.gov/research/umls/rxnorm'
codesystem "ACTCODE": 'http://hl7.org/fhir/v3/ActCode'
codesystem "CVX": 'http://hl7.org/fhir/sid/cvx'
codesystem "FHIR-ACTION-TYPE": 'http://hl7.org/fhir/ValueSet/action-type'
codesystem "FHIR-PLANDEFINITION-TYPE": 'http://hl7.org/fhir/plan-definition-type'
codesystem "FHIR-USAGE-CONTEXT-TYPE": 'http://hl7.org/fhir/usage-context-type'
codesystem "ISO-3166-COUNTRY-CODES": 'urn:iso:std:iso:3166'

// ------------- VALUE SETS ----------------------------------------------------
valueset "Ciprofloxacin medications": '2.16.840.1.113762.1.4.1032.67'
valueset "Doxycycline medications": '2.16.840.1.113762.1.4.1032.66'
valueset "Levofloxacin medications": '2.16.840.1.113762.1.4.1032.69'
valueset "Moxifloxacin medications": '2.16.840.1.113762.1.4.1032.70'
valueset "Clindamycin medications": '2.16.840.1.113762.1.4.1032.68'
valueset "Latex": '2.16.840.1.113762.1.4.1032.76'
valueset "Pregnancy": '2.16.840.1.113883.3.526.3.378'

// ------------- CODES ---------------------------------------------------------
// Exposure codes
code "Exposure to Anthrax code": 'Z20.810' from "ICD-10-CM" display 'Exposure to Anthrax'
code "Exposure to Bacillus anthracis (event) code": '170475009' from "SNOMED-CT"
  display 'Exposure to Bacillus anthracis (event)'

// Asymptomatic code.
code "Asymptomatic code": '84387000' from "SNOMED-CT" display 'Asymptomatic (finding)'

// Pregnancy codes.
code "Pregnancy status code": '82810-3' from "LOINC" display 'Pregnancy status'
code "Pregnant code": '77386006' from "SNOMED-CT" display 'Patient currently pregnant (finding)'

// Anthrax vaccine represented as four separate codes, one for each sequentially administered dose.
code "Anthrax vaccination code": '49598002' from "SNOMED-CT" display 'Anthrax vaccination (procedure)'
code "First anthrax vaccination code": '170338000' from "SNOMED-CT" display 'First anthrax vaccination (procedure)'
code "Second anthrax vaccination code": '170339008' from "SNOMED-CT" display 'Second anthrax vaccination (procedure)'
code "Third anthrax vaccination code": '170340005' from "SNOMED-CT" display 'Third anthrax vaccination (procedure)'
code "Fourth anthrax vaccination code": '170341009' from "SNOMED-CT" display 'Fourth anthrax vaccination (procedure)'

// Recommended antimicrobials each represented by a single RxNorm code.
code "Ciprofloxacin Rx code": '309309' from "RXNORM" display 'Ciprofloxacin 500 MG Oral Tablet'
code "Doxycycline Rx code": '1650143' from "RXNORM" display 'doxycycline hyclate 100 MG Oral Tablet'
code "Levofloxacin Rx code": '311296' from "RXNORM" display 'Levofloxacin 750 MG Oral Tablet'
code "Moxifloxacin Rx code": '311787' from "RXNORM" display 'moxifloxacin HCl 400 MG Oral Tablet'
code "Clindamycin Rx code": '284215' from "RXNORM" display 'clindamycin HCl 300 MG Oral Capsule'

// Codes for substances, needed to help check for certain allergies.
code "Ciprofloxacin substance code": '2551' from "RXNORM" display 'Ciprofloxacin (substance/ingredient)'
code "Doxycycline substance code": '3640' from "RXNORM" display 'Doxycycline (substance/ingredient)'
code "Levofloxacin substance code": '82122' from "RXNORM" display 'Levofloxacin (substance/ingredient)'
code "Moxifloxacin substance code": '139462' from "RXNORM" display 'Moxifloxacin (substance/ingredient)'
code "Clindamycin substance code": '2582' from "RXNORM" display 'Clindamycin (substance/ingredient)'
code "Latex substance code": '1314891' from "RXNORM" display 'Latex (substance/ingredient)'
code "Anthrax vaccine substance code": '404774' from "RXNORM" display 'Anthrax Vaccine Absorbed (substance/ingredient)'
code "Anthrax vaccine CVX code": '24' from "CVX" display 'Anthrax vaccine'

// Alert codes
code "Device code": '701002007' from "SNOMED-CT" display 'Clinical data collection/management information system application software (physical object)'
code "Document signs and symptoms code": '223447008' from "SNOMED-CT" display 'Recommendation to document signs and symptoms (procedure)'
code "Medication review code": '314529007' from "SNOMED-CT" display 'Medication review due (situation)'
code "Not equivalent alert code": 'NOTEQUIV' from "ACTCODE" display 'Not equivalent alert'
code "Timing detected issue code": 'TIME' from "ACTCODE" display 'Timing detected issue'
code "Verify allergy status code": '370860007' from "SNOMED-CT" display 'Verification of allergy status (procedure)'

// Order set codes
code "FHIR ActionType create code": 'create' from "FHIR-ACTION-TYPE" display 'Create'
code "FHIR PlanDefinition eca-rule code": 'eca-rule' from "FHIR-PLANDEFINITION-TYPE" display 'ECA Rule'
code "FHIR PlanDefinition order-set code": 'order-set' from "FHIR-PLANDEFINITION-TYPE" display 'Order Set'
code "FHIR age range usage context code": 'age' from "FHIR-USAGE-CONTEXT-TYPE" display 'Age Range'
code "FHIR clinical focus usage context code": 'focus' from "FHIR-USAGE-CONTEXT-TYPE" display 'Clinical Focus'
code "FHIR clinical venue usage context code": 'venue' from "FHIR-USAGE-CONTEXT-TYPE" display 'Clinical Venue'
code "SNOMED outpatient code": '440655000' from "SNOMED-CT" display 'Outpatient environment'
code "United States code": 'US' from "ISO-3166-COUNTRY-CODES" display 'United States of America'
code "Oral route code": '26643006' from "SNOMED-CT" display 'Oral Route'
code "Swallow dosing instruction code": '421521009' from "SNOMED-CT" display 'Swallow - dosing instruction imperative (qualifier value)'
code "Subcutaneous route code": '34206005' from "SNOMED-CT" display 'Subcutaneous route'

// ------------- CONCEPTS ------------------------------------------------------
// Exposure is represented by two codes, one from ICD10 one from SNOMED-CT.
concept "Anthrax exposure": { "Exposure to Anthrax code", "Exposure to Bacillus anthracis (event) code" } display 'Anthrax exposure'

// Asymptomatic is represented by a single SNOMED-CT code.
concept "AsymptomaticConcept": { "Asymptomatic code" } display 'Asymptomatic'
concept "Anthrax vaccine": { "Anthrax vaccine substance code", "Anthrax vaccine CVX code"} display 'Anthrax vaccine'

// Pregnancy can be represented as a status, an observation, or a condition (see valueset above).
concept "Pregnancy status": { "Pregnancy status code" } display 'Pregnancy status'
concept "Pregnant": { "Pregnant code" } display 'Patient currently pregnant (finding)'

// ------------- PARAMETERS ----------------------------------------------------
// Lookback period for defining "recent" exposure (default: 60 days).
parameter Exposure_Look_Back_Period default 60 days

// Recommended spacing between vacccine doses
parameter Spacing_Between_Vaccine_Doses default 2 weeks

// ------------- PATIENT CONTEXT -----------------------------------------------
context Patient

// Version of this CQL
define CqlVersion: '1.1.0'

// ------------- INCLUSIONS & EXCLUSIONS ---------------------------------------
// Must be 18 years or older.
define Is18orOlder:
  AgeInYears() >= 18

// ------------- ANTHRAX EXPOSURE ----------------------------------------------
/* Exposure to Anthrax can be represented as either a Condition or an Observation
resource. We need to look for recent (<= Exposure_Look_Back_Period) indications
of exposure in order to decide if the patient needs to be treated with PEP. See
Assumption 1. */

// Confirmed, recent (<= Exposure_Look_Back_Period), and active or recurring Conditions.
define RecentAnthraxExposureConditions:
  C3F.Confirmed(C3F.ConditionLookBack(C3F.ActiveOrRecurring([Condition: "Anthrax exposure"]), Exposure_Look_Back_Period))

// The most recent exposure Condition from within the exposure lookback period.
define MostRecentAnthraxExposureCondition:
  (CCL.MostRecentCondition(RecentAnthraxExposureConditions)) C
  return {
    Type: 'Condition',
    Id: C.id.value,
    Date: CCL.FindConditionDate(C)
  }

// Verified and recent (<= Exposure_Look_Back_Period) Observations.
define RecentAnthraxExposureObservations:
  C3F.Verified(C3F.ObservationLookBack([Observation: "Anthrax exposure"], Exposure_Look_Back_Period))

// The most recent exposure Observation.
define MostRecentAnthraxExposureObservation:
  (C3F.MostRecent(RecentAnthraxExposureObservations)) O
  return {
    Type: 'Observation',
    Id: O.id.value,
    Date: C3F.FindDate(O)
  }

// Form the union of all the resources that could be used to indicate exposure.
define RecentAnthraxExposureResources:
  ( MostRecentAnthraxExposureCondition union MostRecentAnthraxExposureObservation ) L
  where L.Date is not null
  sort by Date desc

// Determine if there is a recent (<= Exposure_Look_Back_Period) exposure to Anthrax.
define RecentlyExposedToAnthrax:
  exists(RecentAnthraxExposureResources)

// The most recent (<= Exposure_Look_Back_Period) exposure resource.
define MostRecentAnthraxExposureResource:
  Coalesce(RecentAnthraxExposureResources)

// Date of most recent (<= Exposure_Look_Back_Period) exposure.
define MostRecentAnthraxExposureDate:
  MostRecentAnthraxExposureResource.Date

// ------------- ASYMPTOMATIC --------------------------------------------------
/* Asymptomatic must be represented as an Observation resource. In order for a patient
to be determined to be asymptomatic, the asymptomatic Observation must occur on
or after the date of exposure. See Assumption 2. */

// Check for recent and verified Observations that patient is asymptomatic.
define RecentAsymptomaticObservations:
  C3F.Verified(C3F.ObservationLookBack([Observation: "AsymptomaticConcept"], Exposure_Look_Back_Period))

// Most recent (<= Exposure_Look_Back_Period) asymptomatic Observation.
define MostRecentAsymptomaticObservation:
  C3F.MostRecent(RecentAsymptomaticObservations)

// Date of the most recent (<= Exposure_Look_Back_Period) asymptomatic Observation.
define MostRecentAsymptomaticObservationDate:
  C3F.FindDate(MostRecentAsymptomaticObservation)

// Determine if the patient is asymptomatic, checking to ensure asymptomatic observation
// occurs **after** exposure.
define Asymptomatic:
  MostRecentAsymptomaticObservationDate is not null and
  MostRecentAsymptomaticObservationDate same day or after MostRecentAnthraxExposureDate

// ------------- PREGNANCY -----------------------------------------------------
/* Pregnancy can be represented as an Observation or a Condition. Both types of
resouces are examined to determine if the patient is pregnant. */

// Confirmed, active or recurring, Conditions from the last 42 weeks indicating pregnancy.
define PregnancyConditions:
  C3F.Confirmed(C3F.ConditionLookBack(C3F.ActiveOrRecurring([Condition: "Pregnancy"]), 42 weeks))

// Verified Observations on pregnancy status from the last 42 weeks.
define PregnancyObservations:
  C3F.Verified(C3F.ObservationLookBack([Observation: "Pregnancy status"], 42 weeks))

// The most recent pregnancy Observation from the last 42 weeks.
define MostRecentPregnancyObservation:
  C3F.MostRecent(PregnancyObservations)

// Boolean indicating whether the most recent pregnancy Observation in the past
// 42 weeks indicates a pregnancy.
define MostRecentPregnancyObservationIsPositive:
  C3F.ConceptValue(MostRecentPregnancyObservation) ~ "Pregnant"

// Pregnancy status is defined by either a confirmed, active or recurring, and recent
// (< 42 weeks) pregnancy Condition, or a verified pregnancy Observation within the
// the past 42 weeks indicating a pregnancy
define IsPregnant:
  exists(PregnancyConditions)
  or MostRecentPregnancyObservationIsPositive

// ------------- EXISTING PEP TREATMENTS ---------------------------------------

// Check patient record for current Rx of any of the recommended antimicrobials.
// Need to exmaine both MedicationOrder and MedicationStatement resources.

// Active MedicationOrders for any of the recommended antimicrobials.
define ActiveCiprofloxacinOrders:
  C3F.ActiveMedicationOrder([MedicationOrder: "Ciprofloxacin medications"])

define ActiveDoxycyclineOrders:
  C3F.ActiveMedicationOrder([MedicationOrder: "Doxycycline medications"])

define ActiveLevofloxacinOrders:
  C3F.ActiveMedicationOrder([MedicationOrder: "Levofloxacin medications"])

define ActiveMoxifloxacinOrders:
  C3F.ActiveMedicationOrder([MedicationOrder: "Moxifloxacin medications"])

define ActiveClindamycinOrders:
  C3F.ActiveMedicationOrder([MedicationOrder: "Clindamycin medications"])

define ActiveAntimicrobialMedicationOrders:
  ActiveCiprofloxacinOrders
  union ActiveDoxycyclineOrders
  union ActiveLevofloxacinOrders
  union ActiveMoxifloxacinOrders
  union ActiveClindamycinOrders

// Active MedicationStatements for any of the recommended antimicrobials.
define ActiveCiprofloxacinStatements:
  C3F.ActiveMedicationStatement([MedicationStatement: "Ciprofloxacin medications"])

define ActiveDoxycyclineStatements:
  C3F.ActiveMedicationStatement([MedicationStatement: "Doxycycline medications"])

define ActiveLevofloxacinStatements:
  C3F.ActiveMedicationStatement([MedicationStatement: "Levofloxacin medications"])

define ActiveMoxifloxacinStatements:
  C3F.ActiveMedicationStatement([MedicationStatement: "Moxifloxacin medications"])

define ActiveClindamycinStatements:
  C3F.ActiveMedicationStatement([MedicationStatement: "Clindamycin medications"])

define ActiveAntimicrobialMedicationStatements:
  ActiveCiprofloxacinStatements
  union ActiveDoxycyclineStatements
  union ActiveLevofloxacinStatements
  union ActiveMoxifloxacinStatements
  union ActiveClindamycinStatements

// Need to keep track of the specifics of which of the antimicrobials have active Rx.
define HasCiprofloxacinRx:
  exists(ActiveCiprofloxacinOrders) or exists(ActiveCiprofloxacinStatements)

define HasDoxycyclineRx:
  exists(ActiveDoxycyclineOrders) or exists(ActiveDoxycyclineStatements)

define HasLevofloxacinRx:
  exists(ActiveLevofloxacinOrders) or exists(ActiveLevofloxacinStatements)

define HasMoxifloxacinRx:
  exists(ActiveMoxifloxacinOrders) or exists(ActiveMoxifloxacinStatements)

define HasClindamycinRx:
  exists(ActiveClindamycinOrders) or exists(ActiveClindamycinStatements)

// Format and sort the antimicrobial MedicationOrder list.
define FormattedAntimicrobialMedicationOrders:
  (ActiveAntimicrobialMedicationOrders) O
  return {
    Type:  'MedicationOrder',
    Id: O.id.value,
    Date: CCL.DateTimeText(O.dateWritten)
  }
  sort by Date desc

// Format and sort the antimicrobial MedicationStatement list.
define FormattedAntimicrobialMedicationStatements:
  (ActiveAntimicrobialMedicationStatements) S
  return {
    Type:  'MedicationStatement',
    Id: S.id.value,
    Date: CCL.MedicationStatementDate(S)
  }
  sort by Date desc

// Combine the formatted MedicationOrder and MedicationStatement lists.
define FormattedAntimicrobialMedicationResources:
  (FormattedAntimicrobialMedicationOrders
    union FormattedAntimicrobialMedicationStatements) M
  sort by Date desc

// Boolean indicating whether patient has an exisiting antimicrobial Rx.
define HasExistingAntimicrobialRx:
  exists(FormattedAntimicrobialMedicationResources)

// Check patient record for any recent doses of the vaccine.
// Each dose in the vaccine sequence has its own SNOMED-CT procedure code.

// Look for completed Produres for administering the first dose.
define ProceduresForFirstVaccineDose:
  C3F.Completed([Procedure: "First anthrax vaccination code"])

// Look for completed Produres for administering the second dose.
define ProceduresForSecondVaccineDose:
  C3F.Completed([Procedure: "Second anthrax vaccination code"])

// Look for completed Produres for administering the third dose.
define ProceduresForThirdVaccineDose:
  C3F.Completed([Procedure: "Third anthrax vaccination code"])

// Look for completed Produres for administering the fourth dose.
define ProceduresForFourthVaccineDose:
  C3F.Completed([Procedure: "Fourth anthrax vaccination code"])

// ------------- VACCINE LOGIC -------------------------------------------------
/* How many doses has the patient had? Cases of interest to the logic are:
- 0 doses
- 1-2 doses
- >=3 doses
*/

// Has the patient had the first dose administered?
define HasFirstVaccineDose:
  exists(ProceduresForFirstVaccineDose)

// Has the patient had the second dose administered?
define HasSecondVaccineDose:
  exists(ProceduresForSecondVaccineDose)

// Has the patient had the third dose administered?
define HasThirdVaccineDose:
  exists(ProceduresForThirdVaccineDose)

// Has the patient had the fourth dose administered?
define HasFourthVaccineDose:
  exists(ProceduresForFourthVaccineDose)

/* What is the next dose in the vaccine sequence that the patient should receive?
Note that this logic is very strict, and will miss things like non-sequential dosing.
This and another data inconsistency is detected below and alerted on later on.
*/
define NextVaccineDoseNumber:
  case
    when not HasFirstVaccineDose and not HasSecondVaccineDose and not HasThirdVaccineDose and not HasFourthVaccineDose
      then 1 // The next dose will be the first.
    when HasFirstVaccineDose and not HasSecondVaccineDose and not HasThirdVaccineDose and not HasFourthVaccineDose
      then 2 // The next dose will be the second.
    when HasFirstVaccineDose and HasSecondVaccineDose and not HasThirdVaccineDose and not HasFourthVaccineDose
      then 3 // The next does will be third (last).
    else null // There is no fourth dose for PEP.
  end

// The most recent vaccine Procedure.
define MostRecentVaccineProcedure:
  case
    when HasFourthVaccineDose // They have their fourth dose.
      then CCL.MostRecentProcedure(ProceduresForFourthVaccineDose)
    when HasThirdVaccineDose // They have their third dose.
      then CCL.MostRecentProcedure(ProceduresForThirdVaccineDose)
    when HasSecondVaccineDose // They have their second dose.
      then CCL.MostRecentProcedure(ProceduresForSecondVaccineDose)
    when HasFirstVaccineDose // They have first dose.
      then CCL.MostRecentProcedure(ProceduresForFirstVaccineDose)
    else null // Patient has not had a previous dose.
  end

// When was the last vaccine Procedure?
define DateOfLastVaccineDose:
  CCL.FindProcedureDate(MostRecentVaccineProcedure)

/* Has enough time elasped since the last vaccine dose that the next one can be
applied? */
define ReadyForNextVaccineDose:
  if (DateOfLastVaccineDose is not null) then
    if (NextVaccineDoseNumber is not null) then
      if (Spacing_Between_Vaccine_Doses is not null) then
        if (NextVaccineDoseNumber in {2,3}
          and (DateOfLastVaccineDose same day or before (Today() - Spacing_Between_Vaccine_Doses))) then true
        else false
      else false
    else false
  else
    if (NextVaccineDoseNumber is not null) then
      if (NextVaccineDoseNumber = 1) then true // Need their first dose.
      else false
    else false

/* Logic to detect whether or not the last vaccine Procedure is missing a date.
If this is the case, then the above logic will fail. So an alert is generated
later on to notify the provider of this potential issue.
*/
define LastVaccineProcedureMissingDate:
  if (NextVaccineDoseNumber is not null and DateOfLastVaccineDose is null) then
    if (NextVaccineDoseNumber = 1) then false
    else true
  else false

/* Logic to detect missing Vaccine doses. An example would be if the patient record
shows the patient receiving the second vaccine dose but not the first. If this is
the case, then the above logic will fail. So an alert is generated later on to notify
the provider of this potential issue.
*/
define MissingVaccineDose:
  if (NextVaccineDoseNumber is null) then
    if (HasFirstVaccineDose and HasSecondVaccineDose and HasThirdVaccineDose) then false
    else true
  else false

// ------------- ALLERGIES -----------------------------------------------------
/* Check patient record for allergies to any of the recommended PEP treatments, plus
// latex. Patient allergies are discovered by querying AllergyIntolerance resources. */

// Active or confirmed AllergyIntolerance for Ciprofloxacin.
define CiprofloxacinAllergyIntolerances:
  C3F.ActiveOrConfirmedAllergyIntolerance([AllergyIntolerance: "Ciprofloxacin substance code"])

// Active or confirmed AllergyIntolerance for Doxycycline.
define DoxycyclineAllergyIntolerances:
  C3F.ActiveOrConfirmedAllergyIntolerance([AllergyIntolerance: "Doxycycline substance code"])

// Active or confirmed AllergyIntolerance for Levofloxacin.
define LevofloxacinAllergyIntolerances:
  C3F.ActiveOrConfirmedAllergyIntolerance([AllergyIntolerance: "Levofloxacin substance code"])

// Active or confirmed AllergyIntolerance for Moxifloxacin.
define MoxifloxacinAllergyIntolerances:
  C3F.ActiveOrConfirmedAllergyIntolerance([AllergyIntolerance: "Moxifloxacin substance code"])

// Active or confirmed AllergyIntolerance for Clindamycin.
define ClindamycinAllergyIntolerances:
  C3F.ActiveOrConfirmedAllergyIntolerance([AllergyIntolerance: "Clindamycin substance code"])

// Active or confirmed AllergyIntolerance for BioThrax.
define VaccineAllergyIntolerances:
  C3F.ActiveOrConfirmedAllergyIntolerance([AllergyIntolerance: "Anthrax vaccine"])

// Active or confirmed AllergyIntolerance for Latex.
define LatexAllergyIntolerances:
  C3F.ActiveOrConfirmedAllergyIntolerance([AllergyIntolerance: "Latex substance code"]
    union [AllergyIntolerance: "Latex"])

// Create a formatted list of all the antimicrobial AllergyIntolerance resources.
define AntimicrobialAllergyList:
  (CiprofloxacinAllergyIntolerances
    union DoxycyclineAllergyIntolerances
    union LevofloxacinAllergyIntolerances
    union MoxifloxacinAllergyIntolerances
    union ClindamycinAllergyIntolerances) A
  return {
    Type: 'AllergyIntolerance',
    Id: A.id.value,
    DateRecorded: CCL.DateTimeText(A.recordedDate)
  }
  sort by DateRecorded desc

// Create a formatted list of all the vaccine AllergyIntolerance resources.
define VaccineAllergyList:
  (VaccineAllergyIntolerances) A
  return {
    Type: 'AllergyIntolerance',
    Id: A.id.value,
    DateRecorded: CCL.DateTimeText(A.recordedDate)
  }
  sort by DateRecorded desc

// Create a formatted list of all the latex AllergyIntolerance resources.
define LatexAllergyList:
  (LatexAllergyIntolerances) A
  return {
    Type: 'AllergyIntolerance',
    Id: A.id.value,
    DateRecorded: CCL.DateTimeText(A.recordedDate)
  }
  sort by DateRecorded desc

// Any allergies to any of the antimicrobials?
define HasAntimicrobialAllergy:
  exists(AntimicrobialAllergyList)

// Any allergies to the vaccine?
define HasVaccineAllergy:
  exists(VaccineAllergyList)

// Any allergies to latex?
define HasLatexAllergy:
  exists(LatexAllergyList)

// ------------- ALERTS --------------------------------------------------------
/* There are currently five alerts that can potentially be generated by this CDS:
1. Exposed but not asymptomatic.
2. Existing antimicrobial Rx.
3. Potential antimicrobial allergy.
4. Potential vaccine allergy.
5. Potential latex allergy.
6. Inconsistencies in patient BioThrax dosing history.

These alerts are represented using either a DetectedIssue or Flag FHIR DSTU2 resource.
They each make reference to FHIR resources that have been discovered by querying the
patient record (e.g., an AllergyIntolerance resource indicating a patient allergy to
the vaccine).
*/

// Define a Device resource for referring to this CQL within the alert resources.
define Device: {
  resourceType: 'Device',
  id: '1',
  type: {
    coding: { CCL.FormatCode("Device code") }
  },
  identifier: {
    {
      value: 'Anthrax_Post_Exposure_Prophylaxis_FHIRv102.cql'
    }
  },
  manufacturer: 'Centers for Disease Control and Prevention',
  version: CqlVersion
}

/* Alert 1: Patient is exposed to anthrax but does not have an asymptomatic Observation.
If this is the case, a Flag resource will be generated below to highlight this issue
since post exposure prophylaxis is only recommended for asymptomatic patients. A
flag-detail extension reference to the resource indicating exposure and a code for
documenting signs and symptoms are also included. If patient is both exposed and asymptomatic,
then this Flag resource will be empty (null). */
define FlagNoAsymptomaticObservation:
  if (RecentlyExposedToAnthrax and Is18orOlder and not Asymptomatic) then {
    resourceType: 'Flag',
    id: '2',
    text: {
      status: 'generated',
      "div": '<div xmlns=\"http://www.w3.org/1999/xhtml\">If patient has signs or symptoms consistent with anthrax, conduct a full diagnostic evaluation for anthrax. Signs and symptoms of anthrax include fever, chills, headache, malaise, nausea, vomiting, diarrhea, abdominal pain, diaphoresis, anorexia, nonproductive cough, difficulty breathing, dyspnea, stridor, hypoxemia, hypotension, shock, cyanosis, chest pain, lymphadenopathy, cutaneous ulcer and black eschar. If patient has NO signs or symptoms consistent with anthrax, document “asymptomatic SNOMEDCT 84387000.</div>'
    },
    subject: {
      reference: 'Patient/' + Patient.id.value
    },
    author: {
      reference: CCL.GenerateLocalReference('Device', Device.id)
    },
    status: 'active',
    code: {
      coding: { CCL.FormatCode("Document signs and symptoms code") }
    },
    extension: {
      { // flag-detail extension that references the exposure resource.
        url: 'http://hl7.org/fhir/StructureDefinition/flag-detail',
        valueReference: {
          reference: CCL.GenerateLocalReference(
          MostRecentAnthraxExposureResource.Type,
          MostRecentAnthraxExposureResource.Id)
        }
      }
    }
  }
  else null

// List of references needed for Alert 2 (DetectedIssueExistingAntimicrobialRx).
define ImplicatedExistingMedicationResources:
  (FormattedAntimicrobialMedicationResources) L
  return {
    reference: CCL.GenerateLocalReference(L.Type, L.Id)
  }

// Strings needed to build message for Alert 2 (DetectedIssueExistingAntimicrobialRx).
define CiprofloxacinRxText:
  if (HasCiprofloxacinRx) then {
    name: 'Ciprofloxacin',
    rx: 'Ciprofloxacin 500 mg by mouth every 12 hours for 60 days' } else null

define DoxycyclineRxText:
  if (HasDoxycyclineRx) then {
    name: 'Doxycycline',
    rx: 'Doxycycline 100 mg by mouth every 12 hours for 60 days' } else null

define LevofloxacinRxText:
  if (HasLevofloxacinRx) then {
    name: 'Levofloxacin',
    rx: 'Levofloxacin 750 mg by mouth once daily for 60 days' } else null

define MoxifloxacinRxText:
  if (HasMoxifloxacinRx) then {
    name: 'Moxifloxacin',
    rx: 'Moxifloxacin 400 mg by mouth once daily for 60 days' } else null

define ClindamycinRxText:
  if (HasClindamycinRx) then {
    name: 'Clindamycin',
    rx: 'Clindamycin 600 mg by mouth every 8 hours for 60 days]' } else null

// Text string to be displayed in Alert 2 (DetectedIssueExistingAntimicrobialRx).
define ExistingAntimicrobialText:
  Combine({
    'The patient has an active prescription for [',
    Combine(
      CCL.CullNullStrings({
        CiprofloxacinRxText.name,
        DoxycyclineRxText.name,
        LevofloxacinRxText.name,
        MoxifloxacinRxText.name,
        ClindamycinRxText.name}), ' , '),
    ']. Evaluate the dosage and duration to ensure a 60-day regimen of appropriate antibiotic post-anthrax exposure: [',
    Combine(
      CCL.CullNullStrings({
        CiprofloxacinRxText.rx,
        DoxycyclineRxText.rx,
        LevofloxacinRxText.rx,
        MoxifloxacinRxText.rx,
        ClindamycinRxText.rx}), ' , '),
    '].'})

/* Alert 2: Patient has at least one existing prescription to one of the recommended
antimicrobials. If the patient is exposed, asymptomatic, and has an active Rx for
a pertinent antimicrobial, a DetectedIssue resource will be generated which will
reference the most recent Medication resource for one of the antimicrobials. The
suggested mitigation will be to review the patient's medication to ensure it appropriately
meets CDC recommended dosage and duration. If the patient does not have an existing
Rx, then this DetectedIssue resource will be empty (null). */
define DetectedIssueExistingAntimicrobialRx:
  if (RecentlyExposedToAnthrax and Is18orOlder and Asymptomatic and HasExistingAntimicrobialRx) then {
    resourceType: 'DetectedIssue',
    id: '3',
    detail: ExistingAntimicrobialText,
    author: {
      reference: CCL.GenerateLocalReference('Device', Device.id)
    },
    category: {
      coding: { CCL.FormatCode("Not equivalent alert code") }
    },
    implicated: ImplicatedExistingMedicationResources,
    mitigation: {{
      action: {
        coding: { CCL.FormatCode("Medication review code") }
      }
    }}
  }
  else null

// List of references needed for Alert 3 (FlagAntimicrobialMedicationAllergies).
define AntimicrobialAllergyExtensionReferences:
  (AntimicrobialAllergyList) L
  return {
    url: 'http://hl7.org/fhir/StructureDefinition/flag-detail',
    valueReference: {
      reference: CCL.GenerateLocalReference(L.Type, L.Id)
    }
  }

// Strings needed to build message for Alert 3 (FlagAntimicrobialMedicationAllergies).
define CiprofloxacinAllergyText:
  if (exists(CiprofloxacinAllergyIntolerances)) then 'Ciprofloxacin' else null

define DoxycyclineAllergyText:
  if (exists(DoxycyclineAllergyIntolerances)) then 'Doxycycline' else null

define LevofloxacinAllergyText:
  if (exists(LevofloxacinAllergyIntolerances)) then 'Levofloxacin' else null

define MoxifloxacinAllergyText:
  if (exists(MoxifloxacinAllergyIntolerances)) then 'Moxifloxacin' else null

define ClindamycinAllergyText:
  if (exists(ClindamycinAllergyIntolerances)) then 'Clindamycin' else null

// Text string to be displayed in Alert 3 (FlagAntimicrobialMedicationAllergies).
define AllergyAlertText:
  Combine({
    '<div xmlns=\"http://www.w3.org/1999/xhtml\">Potential patient allergy to [',
    Combine(
      CCL.CullNullStrings({
        CiprofloxacinAllergyText,
        DoxycyclineAllergyText,
        LevofloxacinAllergyText,
        MoxifloxacinAllergyText,
        ClindamycinAllergyText}), ' , '),
    ']. Confirm allergy status.</div>'})

/* Alert 3: Patient potentially has an allergy to one of the antimicrobials. If the
patient is exposed, asymptomatic, and has an AllergyIntolerance resource for one
of the recommended antimicrobials, a Flag resource will be generated to alert on
this. The list of potential allergies are included in the flag-detail extension
field. If the patient has no allergies, then this Flag resource will be empty (null). */
define FlagAntimicrobialMedicationAllergies:
  if (RecentlyExposedToAnthrax and Is18orOlder and Asymptomatic and HasAntimicrobialAllergy) then {
    resourceType: 'Flag',
    id: '4',
    text: {
      status: 'generated',
      "div": AllergyAlertText
    },
    subject: {
      reference: 'Patient/' + Patient.id.value
    },
    author: {
      reference: CCL.GenerateLocalReference('Device', Device.id)
    },
    status: 'active',
    code: {
      coding: { CCL.FormatCode("Verify allergy status code") }
    },
    extension:  AntimicrobialAllergyExtensionReferences
  }
  else null

// List of references needed for Alert 4 (FlagBioThraxAllergy).
define VaccineAllergyExtensionReferences:
  (VaccineAllergyList) L
  return {
    url: 'http://hl7.org/fhir/StructureDefinition/flag-detail',
    valueReference: {
      reference: CCL.GenerateLocalReference(L.Type, L.Id)
    }
  }

/* Alert 4: Patient potentially has an allergy to the anthrax vaccine. If the
patient is exposed, asymptomatic, and has an AllergyIntolerance resource for the
anthrax vaccine, a Flag resource will be generated to alert on this. The list of
potential AllergyIntolerance resources are included in the flag-detail extension
field of the Flag. If the patient has no allergies to the vaccine, then this Flag
resource will be empty (null). */
define FlagBioThraxAllergy:
  if (RecentlyExposedToAnthrax and Is18orOlder and Asymptomatic and HasVaccineAllergy) then {
    resourceType: 'Flag',
    id: '5',
    text: {
      status: 'generated',
      "div": '<div xmlns=\"http://www.w3.org/1999/xhtml\">Potential patient allergy to BioThrax. Confirm allergy status.</div>'
    },
    subject: {
      reference: 'Patient/' + Patient.id.value
    },
    author: {
      reference: CCL.GenerateLocalReference('Device', Device.id)
    },
    status: 'active',
    code: {
      coding: { CCL.FormatCode("Verify allergy status code") }
    },
    extension: VaccineAllergyExtensionReferences
  }
  else null

// List of references needed for Alert 5 (FlagLatexAllergy).
define LatexAllergyExtensionReferences:
  (LatexAllergyList) L
  return {
    url: 'http://hl7.org/fhir/StructureDefinition/flag-detail',
    valueReference: {
      reference: CCL.GenerateLocalReference(L.Type, L.Id)
    }
  }

/* Alert 5: Patient potentially has an allergy to latex. If the patient is exposed,
asymptomatic, and has resources indicating an allergy to latex, a Flag resource
will be generated to alert on this. The list of potential resources indicating a
latex allergy are included in the flag-detail extension field of the Flag. If the
patient has no allergies to latex, then this Flag resource will be empty (null). */
define FlagLatexAllergy:
  if (RecentlyExposedToAnthrax and Is18orOlder and Asymptomatic and HasLatexAllergy) then {
    resourceType: 'Flag',
    id: '6',
    text: {
      status: 'generated',
      "div": '<div xmlns=\"http://www.w3.org/1999/xhtml\">Potential patient allergy to latex. The stopper of BioThrax (anthrax vaccine) vial contains latex. Confirm allergy status.</div>'
    },
    subject: {
      reference: 'Patient/' + Patient.id.value
    },
    author: {
      reference: CCL.GenerateLocalReference('Device', Device.id)
    },
    status: 'active',
    code: {
      coding: { CCL.FormatCode("Verify allergy status code") }
    },
    extension: LatexAllergyExtensionReferences
  }
  else null

// List of references needed for Alert 6 (DetectedIssueBioThraxHistoryInconsistencies).
define ImplicatedVaccineProcedure:
  {
    reference: CCL.GenerateLocalReference('Procedure', MostRecentVaccineProcedure.id.value)
  }

/* Alert 6: Patient BioThrax dosing history has data consistency issues. Either
there is an indication that the recommended dosing sequence was not followed (i.e.,
there is a missing dose), or the last vaccine Procedure is missing a date. Under
these conditions this CDS cannot reliably provide the correct PEP treatment
recommendations. If there is a missing dose in the vaccine sequence, or if the
last vaccine Procedure is missing a date, then a DetectedIssue resource will be
generated which will reference the most recent vaccine Procedure resource. The
suggested mitigation will be to review the patient's medication to ensure it appropriately
meets CDC guidelines. If no inconsistencies are found, then this DetectedIssue resource
will be empty (null). */
define DetectedIssueBioThraxHistoryInconsistencies:
  if ( RecentlyExposedToAnthrax and Is18orOlder and Asymptomatic and
    (LastVaccineProcedureMissingDate or MissingVaccineDose) ) then {
    resourceType: 'DetectedIssue',
    id: '7',
    detail: 'Potential BioThrax vaccine series problem(s) identified. A vaccine in the recommended series might be missing or a vaccination date might be missing. Review BioThrax vaccine series history.',
    author: {
      reference: CCL.GenerateLocalReference('Device', Device.id)
    },
    category: {
      coding: { CCL.FormatCode("Timing detected issue code") }
    },
    implicated: { ImplicatedVaccineProcedure },
    mitigation: {{
      action: {
        coding: { CCL.FormatCode("Medication review code") }
      }
    }}
  }
  else null

// ------------- ORDER SET ----------------------------------------------------
/* The main output of this CDS is an order set which specifies the recommended
treatment for Anthrax PEP. This treatment could include a dose of the Anthrax
vaccine, a prescription for a recommended antimicrobial, both, or neither.
*/

/* The appropriate Procedure codes for the next dose of the Anthrax vaccine. If the
patient is not getting another dose at this time, then this will be empty.
*/
define VaccineCoding:
  case
    when NextVaccineDoseNumber = 1 then {
      coding: {
        CCL.FormatCode("Anthrax vaccination code"),
        CCL.FormatCode("First anthrax vaccination code")
      }
    }
    when NextVaccineDoseNumber = 2 then {
      coding: {
        CCL.FormatCode("Anthrax vaccination code"),
        CCL.FormatCode("Second anthrax vaccination code")
      }
    }
    when NextVaccineDoseNumber = 3 then {
      coding: {
        CCL.FormatCode("Anthrax vaccination code"),
        CCL.FormatCode("Third anthrax vaccination code")
      }
    }
    else null
    end

// Additional instructions for the VaccineRequest.
define VaccineAdditionalInstructions:
  if (IsPregnant) then {
    {
      text: 'Pregnant women at risk for inhalation anthrax should receive the anthrax vaccine regardless of pregnancy trimester.'
    },
    {
      text: 'Epinephrine solution (1:1000) should be available for immediate use in the event that an anaphylactic reaction occurs.'
    }
  }
  else {
      text: 'Epinephrine solution (1:1000) should be available for immediate use in the event that an anaphylactic reaction occurs.'
  }

// Description to be used in all ActivityDefintion resources generated by this library
define ActivityDefinitionDescription:
  'In 2009, the US Advisory Committee on Immunization Practices recommended in addition to antimicrobial therapy, a 3-dose series of Anthrax Vaccine Adsorbed (AVA) BioThrax (Emergent BioSolutions Inc., Rockville, MD, USA) for long-term protection after exposure to anthrax  in individuals without any previous vaccine. After exposure to aerosolized B. anthracis spores, antimicrobial therapy should be initiated as soon as possible. Ideally, the first dose of vaccine should be administered within 10 days. ACIP recommends a post exposure regimen of 60 days of appropriate antimicrobial prophylaxis (covered previously) combined with 3 subcutaneous doses of AVA (administered at 0, 2, and 4 weeks post exposure) as the most effective protection against inhalation anthrax for previously unvaccinated persons aged ≥18 years who have been exposed to aerosolized B. anthracis spores. In general, the peak serologic response to anthrax vaccine occurs 10–14 days after the third dose. (Wright, J.G et al., Morbidity and Mortality Weekly Report, July 23, 2010 / 59(RR06); 1-30). Additionally, the Advisory Committee on Immunization Practices subsequently reviewed all safety data available as of March 2008, including the final results of a retrospective study, and concluded that AVA is safe to administer to anthrax-exposed women during pregnancy. In the setting of an anthrax event that poses a high risk for exposure to aerosolized B. anthracis spores, pregnancy is neither a precaution nor a contraindication to vaccination. Pregnant women at risk for inhalation anthrax should receive AVA and antimicrobial drug therapy regardless of pregnancy trimester (Meanye-Delman D et al., Emerg Infect Dis, 20(2), 2014).'

// Purpose to be used in all ActivityDefintion resources generated by this library
define ActivityDefinitionPurpose:
  'Provides clinicians with information for quickly assessing individuals exposed to anthrax unrelated to occupational exposure, for example in bioterrorism events, and provides the recommended post-exposure prophylaxis (PEP) regimen for asymptomatic patients. Includes immediate treatment with antimicrobials and vaccine and follow-up administration of subsequent vaccines to complete the recommended 3-dose vaccination series.'

// Usage to be used in all ActivityDefintion resources generated by this library
define ActivityDefinitionUsage:
  'Intended for use by clinicians caring for individuals ≥18 years of age in an outpatient setting.'

// UsageContext to be used in all ActivityDefinition and PlanDefinition resources generated by this library
define TreatmentUseContext:
   {
    {
      code: CCL.FormatCode("FHIR age range usage context code"),
      valueRange: {
        low: {
          value: 18
        }
      }
    },
    {
      code: CCL.FormatCode("FHIR clinical venue usage context code"),
      valueCodeableConcept: {
        coding: { CCL.FormatCode("SNOMED outpatient code") }
      }
    },
    {
      code: CCL.FormatCode("FHIR clinical focus usage context code"),
      valueCodeableConcept: {
        coding: { CCL.FormatCode("Exposure to Anthrax code") }
      }
    },
    {
      code: CCL.FormatCode("FHIR clinical focus usage context code"),
      valueCodeableConcept: {
        coding: { CCL.FormatCode("Exposure to Bacillus anthracis (event) code") }
      }
    },
    {
      code: CCL.FormatCode("FHIR clinical focus usage context code"),
      valueCodeableConcept: {
        coding: { CCL.FormatCode("Asymptomatic code") }
      }
    }
  }

// Topics for this library (used in all generated ActivityDefinition and PlanDefinition resources)
define Topics:
  {
    {
      text: 'Anthrax'
    },
    {
      text: 'Emergency Medicine'
    },
    {
      text: 'Post-Exposure Prophylaxis'
    }
  }

// Contributors for this library (used in all generated ActivityDefinition and PlanDefinition resources)
define Contributors:
  {
    {
      type: 'author',
      name: 'Alliance to Modernize Healthcare FFRDC'
    },
    {
      type: 'endorser',
      name: 'Centers for Disease Control and Prevention'
    }
  }

// Contact information for this library (used in all generated ActivityDefinition and PlanDefinition resources)
define ContactInfo:
  {
    {
      telecom: {
        {
          system: 'url',
          value: 'https://cds.ahrq.gov/cdsconnect/artifact/anthrax-post-exposure-prophylaxis',
          use: 'work'
        }
      }
    }
  }

// Copyright statement for this library (used in all generated ActivityDefinition and PlanDefinition resources)
define CopyrightStatement:
  '(C) 2018 The MITRE Corporation. All Rights Reserved.'

// An ActivityDefinition resource representing an ImmunizationRecommendation.
define VaccineRequest:
  {
    resourceType: 'ActivityDefinition',
    id: 'VaccineRequest',
    url: 'https://cds.ahrq.gov/cdsconnect/artifact/anthrax-post-exposure-prophylaxis',
    identifier: {
      {
        value: 'Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/VaccineRequest'
      }
    },
    version: CqlVersion,
    name: 'Anthrax_Post_Exposure_Prophylaxis_Adults_Vaccine_Request',
    title: 'Anthrax Post Exposure Prophylaxis (PEP) for Adults: Vaccine Request',
    status: 'draft',
    experimental: true,
    date: '2019-06-07',
    publisher: 'Centers for Disease Control and Prevention',
    description: ActivityDefinitionDescription,
    purpose: ActivityDefinitionPurpose,
    usage: ActivityDefinitionUsage,
    approvalDate: '2019-06-07',
    lastReviewDate: '2019-06-07',
    effectivePeriod: {
      start: '2019-06-07'
    },
    useContext: TreatmentUseContext,
    topic: Topics,
    contributor: Contributors,
    contact: ContactInfo,
    copyright: CopyrightStatement,
    kind: 'ImmunizationRecommendation',
    code: VaccineCoding,
    productCodeableConcept: {
      coding: { CCL.FormatCode("Anthrax vaccine CVX code") }
    },
    dosage: {
      {
        text: '0.5mL',
        additionalInstruction: VaccineAdditionalInstructions,
        doseQuantity: {
          value: 0.5,
          unit: 'mL',
          system: 'http://unitsofmeasure.org',
          code: 'mL'
        },
        route: {
          coding: { CCL.FormatCode("Subcutaneous route code") }
        }
      }
    }
  }

// The title VaccineAction depends on what dose the patient is getting.
define VaccineActionTitle:
  case
    when NextVaccineDoseNumber = 1 then 'Anthrax Vaccination - 1st dose'
    when NextVaccineDoseNumber = 2 then 'Anthrax Vaccination - 2nd dose'
    when NextVaccineDoseNumber = 3 then 'Anthrax Vaccination - 3rd dose'
    else ''
  end

/* The vaccine Action to appear in the order set. References VaccineRequest resource.
If the patient doesn't meet the inclusion criteria and isn't ready for the next dose,
then this will be empty.
*/
define VaccineAction:
  if (RecentlyExposedToAnthrax and Is18orOlder and Asymptomatic and ReadyForNextVaccineDose) then {
    title: VaccineActionTitle,
    type: {
      code: "FHIR ActionType create code".code
    },
    definition: {
      reference: '#' + VaccineRequest.id
    }
  } else null

// If the patient is pregnant, additional text will be added to the CiprofloxacinRequest.
define PregnancyPriorityCiprofloxacin:
  if (IsPregnant) then 'FIRST CHOICE: '
  else ''

/* Additional instructions for the antimicrobials, which is only displayed for patients who
are pregnant.
*/
define AntimicrobialPregnancyInstructions:
 if (IsPregnant) then
 {
   text: 'Pregnant women at risk for inhalation anthrax should receive antimicrobial drug therapy regardless of pregnancy trimester.'
 }
 else null

/* Additional instructions for the CiprofloxacinRequest, including a message displayed only
for pregnant patients.
*/
define CiprofloxacinAdditionalInstructions:
  AntimicrobialPregnancyInstructions union
  {
    {
      text: 'CONTRAINDICATIONS: Diagnosis of myasthenia gravis and taking tizanidine.'
    },
    {
      text: 'CAUTIONS: If patient is taking  blood thinners, oral antidiabetic drugs, seizure drugs, theophylline, drugs that prolong QT interval, duloxetine (Cymbalta), zolpidem (Ambien), clozapine or any other drug that may interact and cause serious side effects, consider another antibiotic regimen.'
    },
    {
      text: 'Provide patient education on medications.'
    }
  }

// An ActivityDefinition resource representing a MedicationRequest for Ciprofloxacin.
define CiprofloxacinRequest:
  {
    resourceType: 'ActivityDefinition',
    id: 'CiprofloxacinRequest',
    url: 'https://cds.ahrq.gov/cdsconnect/artifact/anthrax-post-exposure-prophylaxis',
    identifier: {
      {
        value: 'Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/CiprofloxacinRequest'
      }
    },
    version: CqlVersion,
    name: 'Anthrax_Post_Exposure_Prophylaxis_Adults_Ciprofloxacin_Request',
    title: 'Anthrax Post Exposure Prophylaxis (PEP) for Adults: Ciprofloxacin Request',
    status: 'draft',
    experimental: true,
    date: '2019-06-07',
    publisher: 'Centers for Disease Control and Prevention',
    description: ActivityDefinitionDescription,
    purpose: ActivityDefinitionPurpose,
    usage: ActivityDefinitionUsage,
    approvalDate: '2019-06-07',
    lastReviewDate: '2019-06-07',
    effectivePeriod: {
      start: '2019-06-07'
    },
    useContext: TreatmentUseContext,
    topic: Topics,
    contributor: Contributors,
    contact: ContactInfo,
    copyright: CopyrightStatement,
    kind: 'MedicationRequest',
    productCodeableConcept: {
      coding: { CCL.FormatCode("Ciprofloxacin Rx code") },
      text: PregnancyPriorityCiprofloxacin + "Ciprofloxacin Rx code".display
    },
    quantity: {
      value: 120,
      system: 'http://hl7.org/fhir/v3/orderableDrugForm',
      code: 'ORTAB'
    },
    dosage: {
      {
        text: 'One every 12 hours for 60 days',
        additionalInstruction: CiprofloxacinAdditionalInstructions,
        patientInstruction: 'Take with full glass of water',
        timing: {
          repeat: {
            frequency: 1,
            period: 12,
            periodUnit: 'h'
          }
        },
        route: {
          coding: { CCL.FormatCode("Oral route code") }
        },
        method: {
          coding: { CCL.FormatCode("Swallow dosing instruction code") }
        }
      }
    }
  }

// If the patient is pregnant, additional text will be added to the DoxycyclineRequest.
define PregnancyPriorityDoxycycline:
  if (IsPregnant) then 'SECOND CHOICE: '
  else ''

/* Additional instructions for the DoxycyclineRequest, including a message displayed only
for pregnant patients.
*/
define DoxycyclineAdditionalInstructions:
  AntimicrobialPregnancyInstructions union
  {
    {
      text: 'CAUTIONS: If patient is taking  blood thinners, oral antidiabetic drugs, seizure drugs, or any other drug that may interact and cause serious side effects, consider another antibiotic regimen.'
    },
    {
      text: 'Provide patient education on medications.'
    }
  }

// An ActivityDefinition resource representing a MedicationRequest for Doxycycline.
define DoxycyclineRequest:
  {
    resourceType: 'ActivityDefinition',
    id: 'DoxycyclineRequest',
    url: 'https://cds.ahrq.gov/cdsconnect/artifact/anthrax-post-exposure-prophylaxis',
    identifier: {
      {
        value: 'Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/DoxycyclineRequest'
      }
    },
    version: CqlVersion,
    name: 'Anthrax_Post_Exposure_Prophylaxis_Adults_Doxycycline_Request',
    title: 'Anthrax Post Exposure Prophylaxis (PEP) for Adults: Doxycycline Request',
    status: 'draft',
    experimental: true,
    date: '2019-06-07',
    publisher: 'Centers for Disease Control and Prevention',
    description: ActivityDefinitionDescription,
    purpose: ActivityDefinitionPurpose,
    usage: ActivityDefinitionUsage,
    approvalDate: '2019-06-07',
    lastReviewDate: '2019-06-07',
    effectivePeriod: {
      start: '2019-06-07'
    },
    useContext: TreatmentUseContext,
    topic: Topics,
    contributor: Contributors,
    contact: ContactInfo,
    copyright: CopyrightStatement,
    kind: 'MedicationRequest',
    productCodeableConcept: {
      coding: { CCL.FormatCode("Doxycycline Rx code") },
      text: PregnancyPriorityDoxycycline + "Doxycycline Rx code".display
    },
    quantity: {
      value: 120,
      system: 'http://hl7.org/fhir/v3/orderableDrugForm',
      code: 'ORTAB'
    },
    dosage: {
      {
        text: 'One every 12 hours for 60 days',
        additionalInstruction: DoxycyclineAdditionalInstructions,
        patientInstruction: 'Take with full glass of water',
        timing: {
          repeat: {
            frequency: 1,
            period: 12,
            periodUnit: 'h'
          }
        },
        route: {
          coding: { CCL.FormatCode("Oral route code") }
        },
        method: {
          coding: { CCL.FormatCode("Swallow dosing instruction code") }
        }
      }
    }
  }

/* Additional instructions for the LevofloxacinRequest, including a message displayed only
for pregnant patients.
*/
define LevofloxacinAdditionalInstructions:
  if (IsPregnant) then { AntimicrobialPregnancyInstructions }
  else { { text: 'none'} }

// An ActivityDefinition resource representing a MedicationRequest for Levofloxacin.
define LevofloxacinRequest:
  {
    resourceType: 'ActivityDefinition',
    id: 'LevofloxacinRequest',
    url: 'https://cds.ahrq.gov/cdsconnect/artifact/anthrax-post-exposure-prophylaxis',
    identifier: {
      {
        value: 'Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/LevofloxacinRequest'
      }
    },
    version: CqlVersion,
    name: 'Anthrax_Post_Exposure_Prophylaxis_Adults_Levofloxacin_Request',
    title: 'Anthrax Post Exposure Prophylaxis (PEP) for Adults: Levofloxacin Request',
    status: 'draft',
    experimental: true,
    date: '2019-06-07',
    publisher: 'Centers for Disease Control and Prevention',
    description: ActivityDefinitionDescription,
    purpose: ActivityDefinitionPurpose,
    usage: ActivityDefinitionUsage,
    approvalDate: '2019-06-07',
    lastReviewDate: '2019-06-07',
    effectivePeriod: {
      start: '2019-06-07'
    },
    useContext: TreatmentUseContext,
    topic: Topics,
    contributor: Contributors,
    contact: ContactInfo,
    copyright: CopyrightStatement,
    kind: 'MedicationRequest',
    productCodeableConcept: {
      coding: { CCL.FormatCode("Levofloxacin Rx code") },
      text: "Levofloxacin Rx code".display
    },
    quantity: {
      value: 60,
      system: 'http://hl7.org/fhir/v3/orderableDrugForm',
      code: 'ORTAB'
    },
    dosage: {
      {
        text: 'One every day for 60 days',
        additionalInstruction: LevofloxacinAdditionalInstructions,
        timing: {
          repeat: {
            frequency: 1,
            period: 1,
            periodUnit: 'd'
          }
        },
        route: {
          coding: { CCL.FormatCode("Oral route code") }
        },
        method: {
          coding: { CCL.FormatCode("Swallow dosing instruction code") }
        }
      }
    }
  }

/* Additional instructions for the MoxifloxacinRequest, including a message displayed only
for pregnant patients.
*/
define MoxifloxacinAdditionalInstructions:
  if (IsPregnant) then { AntimicrobialPregnancyInstructions }
  else { { text: 'none'} }

// An ActivityDefinition resource representing a MedicationRequest for Moxifloxacin.
define MoxifloxacinRequest:
  {
    resourceType: 'ActivityDefinition',
    id: 'MoxifloxacinRequest',
    url: 'https://cds.ahrq.gov/cdsconnect/artifact/anthrax-post-exposure-prophylaxis',
    identifier: {
      {
        value: 'Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/MoxifloxacinRequest'
      }
    },
    version: CqlVersion,
    name: 'Anthrax_Post_Exposure_Prophylaxis_Adults_Moxifloxacin_Request',
    title: 'Anthrax Post Exposure Prophylaxis (PEP) for Adults: Moxifloxacin Request',
    status: 'draft',
    experimental: true,
    date: '2019-06-07',
    publisher: 'Centers for Disease Control and Prevention',
    description: ActivityDefinitionDescription,
    purpose: ActivityDefinitionPurpose,
    usage: ActivityDefinitionUsage,
    approvalDate: '2019-06-07',
    lastReviewDate: '2019-06-07',
    effectivePeriod: {
      start: '2019-06-07'
    },
    useContext: TreatmentUseContext,
    topic: Topics,
    contributor: Contributors,
    contact: ContactInfo,
    copyright: CopyrightStatement,
    kind: 'MedicationRequest',
    productCodeableConcept: {
      coding: { CCL.FormatCode("Moxifloxacin Rx code") },
      text: "Moxifloxacin Rx code".display
    },
    quantity: {
      value: 60,
      system: 'http://hl7.org/fhir/v3/orderableDrugForm',
      code: 'ORTAB'
    },
    dosage: {
      {
        text: 'One every day for 60 days',
        additionalInstruction: MoxifloxacinAdditionalInstructions,
        timing: {
          repeat: {
            frequency: 1,
            period: 1,
            periodUnit: 'd'
          }
        },
        route: {
          coding: { CCL.FormatCode("Oral route code") }
        },
        method: {
          coding: { CCL.FormatCode("Swallow dosing instruction code") }
        }
      }
    }
  }

/* Additional instructions for the ClindamycinRequest, including a message displayed only
for pregnant patients.
*/
define ClindamycinAdditionalInstructions:
  if (IsPregnant) then { AntimicrobialPregnancyInstructions }
  else { { text: 'none'} }

// An ActivityDefinition resource representing a MedicationRequest for Clindamycin.
define ClindamycinRequest:
  {
    resourceType: 'ActivityDefinition',
    id: 'ClindamycinRequest',
    url: 'https://cds.ahrq.gov/cdsconnect/artifact/anthrax-post-exposure-prophylaxis',
    identifier: {
      {
        value: 'Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/ClindamycinRequest'
      }
    },
    version: CqlVersion,
    name: 'Anthrax_Post_Exposure_Prophylaxis_Adults_Clindamycin_Request',
    title: 'Anthrax Post Exposure Prophylaxis (PEP) for Adults: Clindamycin Request',
    status: 'draft',
    experimental: true,
    date: '2019-06-07',
    publisher: 'Centers for Disease Control and Prevention',
    description: ActivityDefinitionDescription,
    purpose: ActivityDefinitionPurpose,
    usage: ActivityDefinitionUsage,
    approvalDate: '2019-06-07',
    lastReviewDate: '2019-06-07',
    effectivePeriod: {
      start: '2019-06-07'
    },
    useContext: TreatmentUseContext,
    topic: Topics,
    contributor: Contributors,
    contact: ContactInfo,
    copyright: CopyrightStatement,
    kind: 'MedicationRequest',
    productCodeableConcept: {
      coding: { CCL.FormatCode("Clindamycin Rx code") },
      text: "Clindamycin Rx code".display
    },
    quantity: {
      value: 360,
      system: 'http://hl7.org/fhir/v3/orderableDrugForm',
      code: 'ORTAB'
    },
    dosage: {
      {
        text: 'Two tablets every 8 hours for 60 days',
        additionalInstruction: ClindamycinAdditionalInstructions,
        timing: {
          repeat: {
            frequency: 2,
            period: 8,
            periodUnit: 'h'
          }
        },
        route: {
          coding: { CCL.FormatCode("Oral route code") }
        },
        method: {
          coding: { CCL.FormatCode("Swallow dosing instruction code") }
        }
      }
    }
  }

/* The antimicrobial Action to appear in the order set. References the five preceeding
antimicrobial MedicationRequest resources. If the patient doesn't meet the inclusion
criteria and already has an existing prescription, then this will be empty.
*/
define AntimicrobialAction:
  if (RecentlyExposedToAnthrax and Is18orOlder and Asymptomatic) then {
    title: 'Antimicrobial medications for anthrax post-exposure prophylaxis',
    groupingBehavior: 'visual-group',
    selectionBehavior: 'at-most-one',
    action: {
    {
      title: 'First line antimicrobial medications for anthrax post-exposure prophylaxis',
      groupingBehavior: 'visual-group',
      selectionBehavior: 'at-most-one',
      action: {
        {
          type: {
            code: "FHIR ActionType create code".code
          },
          definition: {
            reference: '#' + CiprofloxacinRequest.id
          }
        },
        {
          type: {
            code: "FHIR ActionType create code".code
          },
          definition: {
            reference: '#' + DoxycyclineRequest.id
          }
        }
      }
    },
    {
      title: 'Second line antimicrobial medications for anthrax post-exposure prophylaxis',
      groupingBehavior: 'visual-group',
      selectionBehavior: 'at-most-one',
      action: {
        {
          type: {
            code: "FHIR ActionType create code".code
          },
          definition: {
            reference: '#' + LevofloxacinRequest.id
          }
        },
        {
          type: {
            code: "FHIR ActionType create code".code
          },
          definition: {
            reference: '#' + MoxifloxacinRequest.id
          }
        },
        {
          type: {
            code: "FHIR ActionType create code".code
          },
          definition: {
            reference: '#' + ClindamycinRequest.id
          }
        }
      }
    }}
  } else null

/* The list of actions for the PlanDefinition order set. It can consist of AntimicrobialAction,
VaccineAction, both, or neither.
*/
define ActionList:
  if (VaccineAction is not null) then
    if (AntimicrobialAction is not null) then {
      AntimicrobialAction,
      VaccineAction
    }
    else {
      VaccineAction
    }
  else
    if (AntimicrobialAction is not null) then {
      AntimicrobialAction
    }
    else null

/* To make packaging the order set easier, we embed all the Actions into the order set
using FHIR contained resources. This list of contained resources can contain the
ActivityDefinitions for the antimicrobial, the vaccine, both, or neither.
*/
define ContainedResourcesList:
  if (VaccineAction is not null) then
    if (AntimicrobialAction is not null) then {
      CiprofloxacinRequest,
      DoxycyclineRequest,
      LevofloxacinRequest,
      MoxifloxacinRequest,
      ClindamycinRequest,
      VaccineRequest
    }
    else {
      VaccineRequest
    }
  else
    if (AntimicrobialAction is not null) then {
      CiprofloxacinRequest,
      DoxycyclineRequest,
      LevofloxacinRequest,
      MoxifloxacinRequest,
      ClindamycinRequest
    }
    else null

define GenerateOrderSet:
  RecentlyExposedToAnthrax and Is18orOlder and Asymptomatic

/* The order set containing the recommended treatment for Anthrax PEP. It references the
ActionList and the ContainedResourcesList. If treatment is not recommended, then this
resource will be empty.
*/
define OrderSet:
  if (GenerateOrderSet) then {
    resourceType: 'PlanDefinition',
    url: 'https://cds.ahrq.gov/cdsconnect/artifact/anthrax-post-exposure-prophylaxis',
    identifier: {
      {
        value: 'Anthrax_Post_Exposure_Prophylaxis_FHIRv102_CQL_v110/OrderSet'
      }
    },
    version: CqlVersion,
    name: 'Anthrax_Post_Exposure_Prophylaxis_Adults',
    title: 'Anthrax Post Exposure Prophylaxis (PEP) for Adults',
    status: 'draft',
    experimental: true,
    type: {
      coding: {
        CCL.FormatCode("FHIR PlanDefinition eca-rule code"),
        CCL.FormatCode("FHIR PlanDefinition order-set code")
      }
    },
    date: '2019-06-07',
    publisher: 'Centers for Disease Control and Prevention',
    description: 'Provides information for treating patients greater than or equal to 18 years old exposed to anthrax within the past 60 days, who do not have anthrax. It is divided into two parts: \\n- Part #1: For patients that may be symptomatic to flag the need to conduct a full diagnostic evaluation to rule out anthrax before proceeding with post-exposure prophylaxis (PEP) \\n- Part #2: For patients  who are  asymptomatic (not displaying signs and symptoms of anthrax), it provides recommended PEP regimen',
    purpose: 'Provides clinicians with information for quickly assessing individuals exposed to anthrax unrelated to occupational exposure, for example in bioterrorism events, and provides the recommended post-exposure prophylaxis (PEP) regimen for asymptomatic patients. Includes immediate treatment with antimicrobials and vaccine and follow-up administration of subsequent vaccines to complete the recommended 3-dose vaccination series.',
    usage: 'Intended for use by clinicians caring for individuals ≥18 years of age in an outpatient setting.',
    approvalDate: '2019-06-07',
    lastReviewDate: '2019-06-07',
    effectivePeriod: {
      start: '2019-06-07'
    },
    useContext: TreatmentUseContext,
    jurisdiction: { { "coding": { CCL.FormatCode("United States code") } } },
    topic: Topics,
    contributor: Contributors,
    contact: ContactInfo,
    copyright: CopyrightStatement,
    "library": {
      {
        reference: 'Library/Anthrax_Post_Exposure_Prophylaxis_FHIRv102_Library'
      }
    },
    action: {{
      title: 'Anthrax Post Exposure Prophylaxis',
      groupingBehavior: 'logical-group',
      selectionBehavior: 'any',
      triggerDefinition: {
        {
          type: 'data-added',
          eventData: {
            type: 'Condition',
            codeFilter: {
              {
                path: 'code',
                valueCoding: {
                  CCL.FormatCode("Exposure to Anthrax code"),
                  CCL.FormatCode("Exposure to Bacillus anthracis (event) code")
                }
              }
            }
          }
        },
        {
          type: 'data-added',
          eventData: {
            type: 'Observation',
            codeFilter: {
              {
                path: 'code',
                valueCoding: {
                  CCL.FormatCode("Exposure to Anthrax code"),
                  CCL.FormatCode("Exposure to Bacillus anthracis (event) code"),
                  CCL.FormatCode("Asymptomatic code")
                }
              }
            }
          }
        }
      },
      condition: {
        {
          kind: 'applicability',
          language: 'text/cql',
          expression: 'GenerateOrderSet'
        }
      },
      action: ActionList
    }},
    contained: ContainedResourcesList
  }
  else null
