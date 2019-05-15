library ExampleOpioidCDS_STU3_REC_11_Patient_View version '0.1.0'

using FHIR version '3.0.0'

include FHIRHelpers version '3.0.0' called FHIRHelpers
include ExampleOpioidCDS_STU3_Common version '0.1.0' called Common

/*
**
**  Recommendation #11
**    Patient found to be prescribed opioid pain medication and benzodiazepines. Avoid prescribing opioid pain medication and benzodiazepines concurrently whenever possible
**
*/

/*
  Trigger context:
    Primary care/ambulatory care
  Trigger event:
    Patient chart is opened
  Assumptions:
    Count only ambulatory prescriptions
  Inclusion criteria:
    On both opioid with ambulatory care abuse potential and benzodiazepine
  Notification:
    Avoid prescribing opioid pain mediation and benzodiazepine concurrently whenever possible.
    Ref: CDC Recommendation #11.
  EHR expectations:
    Have availability to snooze if benefits outweigh risks

  Plan Definition:
	http://build.fhir.org/ig/cqframework/opioid-cds/PlanDefinition-opioidcds-11.html
*/

context Patient

define "Inclusion Criteria":
  AgeInYears() >= 18
    and (
      exists "Benzo Scripts"
        and exists "Opioid with Abuse Potential Scripts"
    )

define "Benzo Scripts":
  Common."Active Ambulatory Benzodiazepine Rx" BenzoScript
    where not (BenzoScript.medication in Common."End Of Life Opioids")

define "Opioid with Abuse Potential Scripts":
  Common."Active Ambulatory Opioid Rx" OpioidScript
    where not (OpioidScript.medication in Common."End Of Life Opioids")

define "Get Indicator":
  if "Inclusion Criteria"
    then 'warning'
  else null

define "Get Summary":
  if "Inclusion Criteria"
    then 'Patient has active prescriptions for opioid pain medication and benzodiazepines'
  else null

define "Get Detail":
  if "Inclusion Criteria"
    then 'Avoid prescribing opioid pain medication and benzodiazepines concurrently whenever possible'
  else null

// Detected Issue - Avoid prescribing opioid pain medication and benzodiazepines concurrently

define "Concurrent Benzodiazepine Prescription Issue":
  DetectedIssue {
    //identifier:,
    status: FHIR.ObservationStatus { value: 'preliminary' },
    category: FHIR.CodeableConcept { text: FHIR.string { value: "Get Summary" } },
    severity: FHIR.DetectedIssueSeverity { value: 'moderate' },
    patient: FHIR.Reference { reference: FHIR.string { value: 'Patient/' + Patient.id } },
    date: FHIR.dateTime { value: Now() },
    // TODO: Device representation...
    // author:,
    implicated:
      ("Benzo Scripts" union "Opioid with Abuse Potential Scripts") M
        return FHIR.Reference { reference: FHIR.string { value: 'MedicationRequest/' + M.id } },
    detail: FHIR.string { value: "Get Detail" },
    reference: FHIR.uri { value: 'http://fhir.org/guides/cdc/opioid-cds/PlanDefinition/opioidcds-11-patient-view'}
  }
