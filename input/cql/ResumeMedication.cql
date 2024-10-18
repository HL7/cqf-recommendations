library ResumeMedication

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

codesystem "Activity Type": 'http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs'

code "Resume Activity": 'resume-activity' from "Activity Type"

context Patient

/* Recommendation to resume an existing order for a medication on hold */

/*
Positive recommendation:

If an on-hold order for the medication exists
  Propose resuming the medication

Given a proposal, the user can:
  Accept the proposal
  Ignore the proposal
  Reject the proposal without reason
  Reject the proposal with reason

Scenario 1: On-hold medication order, no plan or proposal, decision support should propose
Scenario 2: Active medication order, incomplete proposal, decision support should not propose
Scenario 3: Active medication order, rejected proposal, decision support should not propose
Scenario 4: No active medication order, decision support should not propose

*/

define "Medication Proposal":
  [MedicationRequest] M
    where M.intent = 'order'
      and M.status = 'on-hold'

define "Inclusion Criteria":
  Patient.active
    and exists "Medication Proposal"

define "Resume Medication Proposal":
  [Task] T
    where R.code ~ "Resume Activity"

define "Is Recommendation Applicable":
  "Inclusion Criteria"
    and not exists "Resume Medication Proposal"
