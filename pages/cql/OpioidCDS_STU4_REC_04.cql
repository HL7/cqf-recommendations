library OpioidCDS_STU4_REC_04 version '0.1.0'

using FHIR version '3.2.0'

include OpioidCDSCommonSTU4 version '0.1.0' called Common

/*
**
**  Recommendation #4
**    Prescribe immediate-release opioids instead of extended-release/long-acting (ER/LA) opioids
**
*/

/*
  Trigger context:
    Primary care/ambulatory care
  Trigger event:
    Prescription of extended release/long acting opioid with ambulatory care abuse potential
  Assumptions:
    Count only ambulatory prescriptions
  Inclusion criteria:
    No opioid with ambulatory care abuse potential prescribed for previous 90 days (excluding today) (so yesterday through 89 days before yesterday, covering 90 days total)
    At least 1 encounter in past 12 months [excluding today] (to make sure this is not just a new patient into the system)
  Notification:
    Recommend use of immediate-release opioids instead of extended release/long acting opioids when starting patient on opioids.
    Ref: CDC Recommendation #4.
  EHR expectations:
    Have availability to snooze if benefits outweigh risks or if not applicable
*/

// Trigger Event Rx
parameter ContextPrescriptions List<MedicationRequest>

context Patient

define "Inclusion Period":
  Interval[Today() - 91 days, Today() - 1 days]

define "Encounter Period":
  Interval[Today() - 12 months - 1 days, Today() - 1 days]

define "Trigger Event Prescriptions":
  ContextPrescriptions triggerScripts
    let rxNormCode: Common.ToCode(triggerScripts.medication.coding[0])
      where rxNormCode in Common."Ambulatory Abuse Potential Opioids"
        and rxNormCode in Common."Long Acting Opioids"

define "Validate Trigger Event":
  exists( "Trigger Event Prescriptions" )

define "Inclusion Criteria":
  "Validate Trigger Event"
  and not "Exclusion Criteria"
  and not exists(
    Common."Ambulatory Opioid Rx" orders
      where date from orders.authoredOn.value in day of "Inclusion Period"
  )
  and exists(
    [Encounter] encounters
      where date from encounters.period."start".value in day of "Encounter Period"
  )

define "Exclusion Criteria":
  Common."End of Life Assessment"
    or Common."Is Context Prescription End of Life Opioid?"(ContextPrescriptions)

define "Get Indicator":
  'warning'

define "Get Summary":
  'Recommend use of immediate-release opioids instead of extended release/long acting opioids when starting patient on opioids.'

define "Get Detail":
  'The following medication requests(s) release rates should be re-evaluated: ' + Common.GetMedicationNames("Trigger Event Prescriptions")

// TODO - I would like to be able to offer the medication's immediate release form as a suggestions