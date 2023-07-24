library OrderMedication

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

context Patient

/* Recommendation to order a medication */

/*
Positive recommendation:

If the medication is not being taken (i.e. dispensed, administered, or documented)
  If the medication has not been ordered
    Propose the medication

Given a proposal, the user can:
  Accept the proposal
  Ignore the proposal
  Reject the proposal without reason
  Reject the proposal with reason

Scenario 1: No event, no plan or proposal, decision support should propose
Scenario 2: No event, incomplete proposal, decision support should not propose
Scenario 3: No event, rejected proposal, decision support should not propose
Scenario 4: Event, no proposal, decision support should not propose
Scenario 5: Event, proposal, decision support should not propose
Scenario 6: Event not done, no proposal, decision support should not propose
Scenario 7: Event not done, proposal, decision support should not propose

*/

define "Inclusion Criteria":
  Patient.active

define "Active or Completed Medication Statement":
  [MedicationStatement] M
    where M.status in { 'active', 'completed', 'intended', 'on-hold' }

define "Medication Statement Not Taken":
  [MedicationStatement] M
    where M.status in { 'not-taken', 'stopped' } // TODO: Is 'stopped' appropriate here?

define "Active or Completed Medication Administration":
  [MedicationAdministration] M
    where M.status in { 'in-progress', 'on-hold', 'completed' }

define "Medication Administration Not Done":
  [MedicationAdministration] M
    where M.status in { 'not-done', 'stopped' } // TODO: Is 'stopped' appropriate here?

define "Active or Completed Medication Dispense":
  [MedicationDispense] M
    where M.status in { 'preparation', 'in-progress', 'on-hold', 'completed' }

define "Medication Dispense Not Done":
  [MedicationDispense] M
    where M.status in { 'cancelled', 'stopped', 'declined' } // TODO: Is 'stopped' appropriate here?

define "Medication Proposal":
  [MedicationRequest] M
    where M.status in { 'draft', 'active', 'on-hold', 'completed' }

define "Medication Not Proposed":
  [MedicationRequest] M
    where M.status in { 'cancelled', 'stopped' }

define "Is Recommendation Applicable":
  "Inclusion Criteria"
    and not exists (
      "Active or Completed Medication Statement"
        union "Medication Statement Not Taken"
        union "Active or Completed Medication Administration"
        union "Medication Administration Not Done"
        union "Active or Completed Medication Dispense"
        union "Medication Dispense Not Done"
    )
    and not exists (
      "Medication Proposal"
        union "Medication Not Proposed"
    )
