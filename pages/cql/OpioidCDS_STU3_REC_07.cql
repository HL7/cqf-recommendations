library OpioidCDS_STU3_REC_07 version '0.1.0'

using FHIR version '3.0.0'

include OpioidCDSCommonSTU3 version '0.1.0' called Common

/*
**
**  Recommendation #7
**    Evaluate benefits and harms with patients within 1 to 4 weeks of starting opioid therapy...
**    evaluate benefits and harms of continued therapy with patients every 3 months or more frequently
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
    (Opioid Rx for at least 7 of the past 10 days AND at least 1 encounter in past 12 months [excluding today])
      OR (Opioid Rx for at least 21 of 30 days for each of the past 3 months)
    No assessment of risk for opioid use (see below) within past 90 days (noted as Procedure)
  Exclusion criteria (optional):
    Meds indicating end of life
    Conditions indicating end of life
  Notification:
    Patients on opioid therapy should be evaluated for benefits and harms
    within 1 to 4 weeks of starting opioid therapy and every 3 months or more subsequently.
    Ref: CDC Recommendation #7.
  Value sets:
    Assessment of risk for opioid abuse:
      Assessment of risk for opioid abuse (procedure) SCTID: 454281000124100
      High risk drug monitoring (regime/therapy): SCTID: 268525008
  EHR expectations:
    If not able to document/retrieve above procedure,
    then use EHR snoozing functionality to allow "Have assessed/will assess. Snooze 3 months."
*/

parameter ContextPrescriptions List<MedicationRequest>

context Patient

define "Risk Assessment Interval":
  Interval[Today() - 91 days, Today() - 1 day]

define "Encounter Interval":
  Interval[Today() - 12 months - 1 days, Today() - 1 day]

define "Validate Trigger Event":
  exists(
    ContextPrescriptions triggerScript
      where Common.ToCode(triggerScript.medication.coding[0]) in Common."Ambulatory Abuse Potential Opioids"
  )

define "Inclusion Criteria":
  "Validate Trigger Event"
    and not "Exclusion Criteria"
    and not exists ( "Opioid Risk Assessment in Past 90 Days" )
    and ( "Rx Active 7 of Past 10 Days With Encounter" or "Rx Active 63 of Past 90 Days" )

define "Exclusion Criteria":
  Common."End of Life Assessment"
    or Common."Is Context Prescription End of Life Opioid?"(ContextPrescriptions)

define "Opioid Risk Assessment in Past 90 Days":
  [Procedure: Common."Risk Assessment"] riskAssessment
    where date from riskAssessment.performed."start".value in day of "Risk Assessment Interval"

define "Rx Active 7 of Past 10 Days With Encounter":
  AnyTrue(Common.ProbableDaysInRange(Common."Active Ambulatory Opioid Rx", 10, 7))
    and exists(
      [Encounter] E
        where date from E.period."start".value in day of "Encounter Interval"
    )

define "Rx Active 63 of Past 90 Days":
  AnyTrue(Common.ProbableDaysInRange(Common."Active Ambulatory Opioid Rx", 90, 63))

define "Get Indicator":
  'warning'

define "Get Summary":
  'Patients on opioid therapy should be evaluated for benefits and harms within 1 to 4 weeks of starting opioid therapy and every 3 months or more subsequently.'

define "Get Detail":
  if "Rx Active 63 of Past 90 Days"
    then 'No evaluation for benefits and harms associated with opioid therapy has been performed for the patient in the past 3 months'
  else 'No evaluation for benefits and harms has been performed for the patient starting opioid therapy'