library OpioidCDS_STU3_REC_10 version '0.1.0'

using FHIR version '3.0.0'

include OpioidCDSCommonSTU3 version '0.1.0' called Common

codesystem "V2 Interpretation Codes": 'http://hl7.org/fhir/v2/0078'

/*
**
** Recommendation #10
**
*/

/*
  Trigger context:
    Primary care/ambulatory care
  Trigger event:
    Prescription of opioid with ambulatory care abuse potential
  Assumptions:
    Count only ambulatory prescriptions
  Inclusion criteria:
    Opioid Rx for at least 80 of the past 90 days
      AND
        (No Urine Screening in last 12 months
          OR Expected opioids not present
          OR Unexpected drugs present)
  Exclusion criteria (optional):
    Meds indicating end of life
    Conditions indicating end of life
  Notification:
    No Urine Screening in last 12 months - Patients on opioid therapy should have a urine drug test performed every 12 months.
    Expected opioids not present - Expected opioid x not present in urine screening
    Unexpected drugs present - Unexpected drug x present in urine screening
    Ref: CDC Recommendation #10.
  EHR expectations:
    Have availability to snooze for 3 months
*/

code "Positive": 'POS' from "V2 Interpretation Codes"

parameter ContextPrescriptions List<MedicationRequest>

context Patient

define "Lookback Year":
  Interval[Today() - 12 months - 1 days, Today() - 1 day]

define "Validate Trigger Event":
  exists (
    ContextPrescriptions triggerScript
      where Common.ToCode(triggerScript.medication.coding[0]) in Common."Ambulatory Abuse Potential Opioids"
  )

define "Inclusion Criteria":
  "Validate Trigger Event"
      and not "Exclusion Criteria"
      and AnyTrue(Common.ProbableDaysInRange(Common."Active Ambulatory Opioid Rx", 90, 80))
      and
        ("No Urine Screening In Last 12 Months"
          or "Has Missing Opioids?"
          or "Has Unprescribed Opioids?"
          or "Has Illicit Drugs in Screening?")

define "Exclusion Criteria":
  Common."End of Life Assessment"
    or Common."Is Context Prescription End of Life Opioid?"(ContextPrescriptions)

define "Illicit Drug Urine Screenings in Last 12 Months":
  [Observation: "combo-code" in Common."Illicit Drug Screening"] observation
    where date from observation.effective.value in day of "Lookback Year"
      sort by effective.value

define "Opioid Drug Urine Screenings in Last 12 Months":
  [Observation: "combo-code" in Common."Opioid Drug Screening"] observation
    where date from observation.effective.value in day of "Lookback Year"
      sort by effective.value

define "Most Recent Illicit Drug Urine Screenings in Last 12 Months":
  Last( "Illicit Drug Urine Screenings in Last 12 Months" )

define "Most Recent Opioid Drug Urine Screenings in Last 12 Months":
  Last( "Opioid Drug Urine Screenings in Last 12 Months" )

define "No Urine Screening In Last 12 Months":
  "Most Recent Illicit Drug Urine Screenings in Last 12 Months" is null
    and "Most Recent Opioid Drug Urine Screenings in Last 12 Months" is null

define "Positive Illicit Drug Screening":
  "Most Recent Illicit Drug Urine Screenings in Last 12 Months" mostRecentScreening
    where Common.ToCode(mostRecentScreening.interpretation.coding[0]) ~ "Positive"
      or
        (if mostRecentScreening.component[0] is not null
          then Common.ToCode(mostRecentScreening.component[0].interpretation.coding[0]) ~ "Positive"
        else false)

define "Has Illicit Drugs in Screening?":
  exists ( "Positive Illicit Drug Screening" )

// Assuming only one code
define "Inconsistent Illicit Drugs":
  'Found the following illicit drug(s) in urine drug screen: ' +
    (
      if GetDrug("Positive Illicit Drug Screening".code.coding[0].display.value) is null
        then if GetDrug("Positive Illicit Drug Screening".component[0].code.coding[0].display.value) is null
          then 'could not determine the drug name'
          else GetDrug("Positive Illicit Drug Screening".component[0].code.coding[0].display.value)
      else GetDrug("Positive Illicit Drug Screening".code.coding[0].display.value)
    )

define "Positive Opioid Drug Screening":
  "Most Recent Opioid Drug Urine Screenings in Last 12 Months" mostRecentScreening
    where Common.ToCode(mostRecentScreening.interpretation.coding[0]) ~ "Positive"
      or
        (if mostRecentScreening.component[0] is not null
          then Common.ToCode(mostRecentScreening.component[0].interpretation.coding[0]) ~ "Positive"
        else false)

define "Has Opioids in Screening?":
  exists ( "Positive Opioid Drug Screening" )

define "Orders Before Most Recent Opioid Screening":
  Common."Active Ambulatory Opioid Rx" orders
      with "Positive Opioid Drug Screening" mostRecentScreening
        such that orders.authoredOn.value < mostRecentScreening.effective.value
      return
        orders

define "Prescribed Opioids":
  "Orders Before Most Recent Opioid Screening" orders
    return
      Lower(Common.GetIngredient(Common.ToCode(orders.medication.coding[0])))

define "Opioids From Most Recent Screening":
  "Positive Opioid Drug Screening" mostRecentScreening
    return
      Lower(GetDrug(mostRecentScreening.code.coding[0].display.value))
        union (
          if mostRecentScreening.component[0] is not null
            then Lower(GetDrug(mostRecentScreening.component[0].code.coding[0].display.value))
          else {}
        )

define "Unprescribed Opioids":
  "Opioids From Most Recent Screening" except
    ("Opioids From Most Recent Screening" intersect "Prescribed Opioids")

define "Has Unprescribed Opioids?":
  exists ("Unprescribed Opioids")

define "Inconsistent Unprescribed Opioids":
  'Found the following unprescribed opioid(s): ' + Combine("Unprescribed Opioids", ', ')

define "Missing Opioids":
  if "Positive Opioid Drug Screening" is not null
  then
    "Prescribed Opioids" Prescriptions
      except
        Lower(GetDrug("Positive Opioid Drug Screening".code.coding[0].display.value))
          union (
            if "Positive Opioid Drug Screening".component[0] is not null
              then Lower(GetDrug("Positive Opioid Drug Screening".component[0].code.coding[0].display.value))
            else {}
          )
  else null

define "Has Missing Opioids?":
  exists ("Missing Opioids")

define "Inconsistent Missing Opioids":
  // TODO - this will error with more than 1 element
  'The following opioids are missing from the screening: ' + Combine("Missing Opioids", ', ')

define "Get Indicator":
  'warning'

// Functions
define function GetDrug(value String):
  if value is null then null
  else if PositionOf('[', value) = -1
    then ReplaceMatches(Split(value, 'tested')[0], '\\s', '')
  else ReplaceMatches(Split(value, '\\[')[0], '\\s', '')