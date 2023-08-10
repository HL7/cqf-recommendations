library OrderService

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

context Patient

/* Recommendation to order a service */

/*
NOTE: This recommendation is dramatically simplified to illustrate the general
pattern for a positive recommendation, with the ability for users to reject
the recommendation, and flexibility in how the recommendation is achieved.

Specifically:
* There is no terminology, any service request/event on any topic will do
* There is no timing, any service request/event will do at any time
* There is no reference to participants other than the patient
* There is no relationship to a setting
* There is no relationship to an encounter or episode
* There is no relationship to a care plan

These simplifications allow the example to focus exclusively on the pattern for
recommending and for accepting/rejecting the proposal, as well as documenting
the completion, or explicit non-performance of the communication.
*/

/*
Positive recommendation:

If the activity has not been performed
  If the activity has not been planned or proposed
    Propose the activity

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

define "Active or Completed Procedure":
  [Procedure] C
    where C.status in { 'preparation', 'in-progress', 'on-hold', 'completed' }

define "Procedure Not Done":
  [Procedure] C
    where C.status in { 'not-done', 'stopped' }

define "Procedure Proposal":
  [ServiceRequest] R
    where R.status in { 'draft', 'active', 'on-hold' }
      and not (Coalesce(R.doNotPerform, false))

define "Procedure Not Proposed":
  [ServiceRequest] R
    where R.status in { 'revoked' }
      and not (Coalesce(R.doNotPerform, false))

define "Is Recommendation Applicable":
  "Inclusion Criteria"
    and not exists (
      "Active or Completed Procedure"
        union "Procedure Not Done"
    )
    and not exists (
      "Procedure Proposal"
        union "Procedure Not Proposed"
    )
