library ProposeDiagnosis

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

codesystem "Activity Type": 'http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type-cs'
codesystem "Condition Clinical Status Code": 'http://terminology.hl7.org/CodeSystem/condition-clinical'
codesystem "Condition Verification Status Code": 'http://terminology.hl7.org/CodeSystem/condition-ver-status'

code "Propose diagnosis": 'propose-diagnosis' from "Activity Type"
code "Active Condition": 'active' from "Condition Clinical Status Code"
code "Provisional Condition": 'provisional' from "Condition Verification Status Code"
code "Confirmed Condition": 'confirmed' from "Condition Verification Status Code"

context Patient

/* Recommendation to propose a diagnosis */

/*
NOTE: This recommendation is dramatically simplified to illustrate the general
pattern for a positive recommendation to propose a diagnosis, with the ability
for users to reject the recommendation, and flexibility in how the recommendation
is achieved.

Specifically:
* There is no terminology, any task on any topic will do
* There is no timing, any task will do at any time
* There is no reference to participants other than the patient
* There is no relationship to a setting
* There is no relationship to an encounter or episode
* There is no relationship to a care plan

These simplifications allow the example to focus exclusively on the pattern for
recommending and for accepting/rejecting the proposal, as well as documenting
the completion, or explicit non-performance of the activity.
*/

/*
Positive recommendation:

If the patient meets the inclusion criteria
  If the patient does not have the diagnosis
    If proposing the diagnosis has not been planned or proposed
      Propose the diagnosis

Given a proposal, the user can:
  Accept the proposal
  Ignore the proposal
  Reject the proposal without reason
  Reject the proposal with reason

Scenario 1: No event, no plan or proposal, decision support should propose
Scenario 2: No event, incomplete proposal, decision support should not propose
Scenario 3: No event, rejected proposal, decision support should not propose
Scenario 4: Event, no proposal, decision support should not propose
Scenario 5: Event, completed proposal, decision support should not propose
Scenario 6: Event not done, no proposal, decision support should not propose
Scenario 7: Event not done, proposal, decision support should not propose

*/

define "Inclusion Criteria":
  Patient.active

define "Propose Diagnosis Task":
  [Task] C
    where C.code ~ "Propose diagnosis"
      and doNotPerform(C) is not true

define "Diagnosis":
  [Condition] C
    where C.clinicalStatus ~ "Active Condition"
      and C.verificationStatus ~ "Confirmed Condition"

define "Active or Completed Activity":
  "Propose Diagnosis Task" C
    where C.status in { 'in-progress', 'on-hold', 'completed' }

define "Activity Not Done":
  "Propose Diagnosis Task" C
    where C.status in { 'cancelled', 'failed' }

define "Activity Proposal":
  "Propose Diagnosis Task" R
    where R.status in { 'draft', 'requested', 'received', 'accepted', 'ready' }

define "Activity Proposal Rejected":
  "Propose Diagnosis Task" R
    where R.status in { 'rejected' }

define "Is Recommendation Applicable":
  "Inclusion Criteria"
    and not exists ("Diagnosis")
    and not exists (
      "Active or Completed Activity"
        union "Activity Not Done"
    )
    and not exists (
      "Activity Proposal"
        union "Activity Proposal Rejected"
    )

define function doNotPerform(task Task):
  singleton from (
    task.extension E
      where E.url = 'http://hl7.org/fhir/StructureDefinition/request-doNotPerform'
  ).value as boolean
