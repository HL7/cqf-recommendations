library OpioidCDS_DSTU2_REC_08 version '0.1.0'

using FHIR version '1.0.2'

include OpioidCDSCommonDSTU2 version '0.1.0' called Common

/*
**
**  Recommendation #8
**    Incorporate into the management plan strategies to mitigate risk;
**    including considering offering naloxone when factors that increase risk for opioid overdose are present
**
*/

/*
  Trigger context:
  	Primary care/ambulatory care
  Trigger event:
    Prescription of opioid with ambulatory care abuse potential
  Assumptions:
    Count only ambulatory prescriptions
  Inclusion criteria (OR):
    Average MME >= 50
    On benzodiazepine
    History of alcohol abuse or drug abuse (in FHIR Condition, which means problem list at this point for many EHRs.  Univ. of Utah has created separate interfaces for pulling in past medical history and encounter diagnosis, but this will not be widely available)
  Exclusion criterion:
    On naloxone
  Notification:
    Consider offering naloxone given following risk factor(s) for opioid overdose: (average MME >= 50/day), (concurrent use of benzodiazepine), (history of alcohol or drug abuse).
    Ref: CDC Recommendation #8.
  Value sets:
    Custom value set for relevant substance abuse (Rob will create)
      This needs to include ICD9 and/or 10
      For now, defining value sets as descendants of:
        ICD10: F10-F19, Mental and behavioral disorders due to psychoactive substance use
        ICD9: 304, Drug dependence and 303, Alcohol dependence syndrome
*/

parameter ContextPrescriptions List<MedicationOrder>

context Patient

define "Validate Trigger Event":
  exists(
    ContextPrescriptions triggerScript
      where Common.ToCode(triggerScript.medicationCodeableConcept.coding[0]) in Common."Ambulatory Abuse Potential Opioids"
  )

define "Inclusion Criteria":
  "Validate Trigger Event"
  and not "Exclusion Criteria"
  and (
    "Total MME" >= 50 'mg/d'
      or "On Benzodiazepine"
      or "Has Substance Abuse History"
  )

define "Exclusion Criteria":
  "On Naloxone"
    or Common."End of Life Assessment"
    or Common."Is Context Prescription End of Life Opioid?"(ContextPrescriptions)

define "Total MME":
  Common.TotalMME(Common."Active Ambulatory Opioid Rx" union ContextPrescriptions)

define "On Naloxone":
  exists( Common."Active Ambulatory Naloxone Rx" )

define "On Benzodiazepine":
  exists( Common."Active Ambulatory Benzodiazepine Rx" )

define "Has Substance Abuse History":
  exists ( [Condition: Common."Substance Abuse"] )

define "Get Indicator":
  'warning'

define "Get Summary":
  'Incorporate into the management plan strategies to mitigate risk; including considering offering naloxone when factors that increase risk for opioid overdose are present'

define "Get Detail":
  'Consider offering naloxone given following risk factor(s) for opioid overdose: '
      + if "Total MME" >= 50 'mg/d'
          then 'Average MME (' + ToString("Total MME") + ') >= 50 mg/day, '
        else ''
      + if "On Benzodiazepine"
          then 'concurrent use of benzodiazepine, '
        else ''
      + if "Has Substance Abuse History"
          then 'history of alcohol or drug abuse.'
        else ''