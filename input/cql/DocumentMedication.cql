library DocumentMedication

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

codesystem "Activity Type": 'http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs'

code "Document medication": 'document-medication' from "Activity Type"

context Patient

/* Recommendation to document an existing order for a medication */

/*
Positive recommendation:

If the medication has been ordered but has not been documented
  Propose documenting the medication

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
    and exists ("Medication Proposal")
    and not exists ("Medication Not Proposed")

define "Active or Completed Medication Statement":
  [MedicationStatement] M
    where M.status in { 'active', 'completed', 'intended', 'on-hold' }

define "Medication Statement Not Taken":
  [MedicationStatement] M
    where M.status in { 'not-taken', 'stopped' } // TODO: Is 'stopped' appropriate here?

define "Medication Proposal":
  [MedicationRequest] M
    where M.status in { 'draft', 'active', 'on-hold', 'completed' }

define "Medication Not Proposed":
  [MedicationRequest] M
    where M.status in { 'cancelled', 'stopped' }

define "Document Proposal":
  [Task] R
    where R.code ~ "Document medication"
      and R.status in { 'draft', 'requested', 'received', 'accepted', 'ready' }
      and not Coalesce(doNotPerform(R), false)

define "Document Proposal Rejected":
  [Task] R
    where R.code ~ "Document medication"
      and R.status in { 'rejected' }
      and not Coalesce(doNotPerform(R), false)

define "Is Recommendation Applicable":
  "Inclusion Criteria"
    and not exists (
      "Active or Completed Medication Statement"
        union "Medication Statement Not Taken"
    )
    and not exists (
      "Document Proposal"
        union "Document Proposal Rejected"
    )

define function doNotPerform(task Task):
  singleton from (
    task.modifierExtension E
      where E.url = 'http://hl7.org/fhir/StructureDefinition/request-doNotPerform'
  ).value as boolean
