library StopMedication

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

codesystem "Activity Type": 'http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs'

code "Stop Activity": 'stop-activity' from "Activity Type"

context Patient

/* Recommendation to stop an existing order for a medication */

/*
Positive recommendation:

If an active order for the medication exists
  Propose stopping the medication

Given a proposal, the user can:
  Accept the proposal
  Ignore the proposal
  Reject the proposal without reason
  Reject the proposal with reason

Scenario 1: Active medication order, no plan or proposal, decision support should propose
Scenario 2: Active medication order, incomplete proposal, decision support should not propose
Scenario 3: Active medication order, rejected proposal, decision support should not propose
Scenario 4: No active medication order, decision support should not propose

*/

define "Medication Order":
  [MedicationRequest] M
    where M.intent = 'order'
      and M.status = 'active'
      and M.doNotPerform is not true

define "Inclusion Criteria":
  Patient.active
    and exists "Medication Order"

define "Stop Medication Proposal":
  [Task] T
    where T.code ~ "Stop Activity"
      and doNotPerform(T) is not true

define "Is Recommendation Applicable":
  "Inclusion Criteria"
    and not exists "Stop Medication Proposal"

define function doNotPerform(task Task):
  singleton from (
    task.extension E
      where E.url = 'http://hl7.org/fhir/StructureDefinition/request-doNotPerform'
  ).value as boolean
