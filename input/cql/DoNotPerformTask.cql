library DoNotPerformTask

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

context Patient

/* Recommendation not to perform a task */

/*
NOTE: This recommendation is dramatically simplified to illustrate the general
pattern for a negative recommendation, with the ability for users to reject
the recommendation, and flexibility in how the recommendation is achieved/documented.

Specifically:
* There is no terminology, any task on any topic will do
* There is no timing, any task will do at any time
* There is no reference to participants other than the patient
* There is no relationship to a setting
* There is no relationship to an encounter or episode
* There is no relationship to a care plan

These simplifications allow the example to focus exclusively on the pattern for
not recommending and for accepting/rejecting the proposal, as well as documenting
the completion, or explicit non-performance of the event.
*/

/*
Negative recommendation:

If the activity is planned, in progress, and not documented
  If stopping the activity has not been proposed
    Propose the planned or in progress activity be stopped

Scenario 1: Event in progress, no proposal to stop, decision support should propose stopping
Scenario 2: Event in progress, accepted proposal to stop, decision support should not propose
Scenario 3: Event in progress, rejected proposal to stop, decision support should not propose
Scenario 4: Event planned, no proposal to stop, decision support should propose stopping
Scenario 5: Event planned, accepted proposal to stop, decision support should not propose
Scenario 6: Event planned, rejected proposal to stop, decision support should not propose
Scenario 7: Negative Event documented, decision support should not propose (nothing to do)
Scenario 8: Event completed, decision support should not propose (nothing to do)
Scenario 9: No event in progress, decision support should not propose (nothing to do)
*/

define "Inclusion Criteria":
  Patient.active

define "Active or In-progress Activity":
  [Task] C
    where C.status in { 'in-progress', 'on-hold' }
      and not Coalesce(doNotPerform(C), false)

define "Activity Not Done":
  [Task] C
    where C.status in { 'cancelled', 'failed' }
      and not Coalesce(doNotPerform(C), false)

define "Activity Proposal":
  [Task] R
    where R.status in { 'draft', 'requested', 'received', 'accepted', 'ready' }
      and not Coalesce(doNotPerform(R), false)

define "Do Not Perform Activity Proposal":
  [Task] R
    where R.status in { 'draft', 'requested', 'received', 'accepted', 'ready' }
      and doNotPerform(R)

define "Rejected Do Not Perform Activity Proposal":
  [Task] R
    where R.status in { 'rejected' }
      and doNotPerform(R)

define "Is Recommendation Applicable":
  "Inclusion Criteria"
    and exists (
      "Active or In-progress Activity"
        union "Activity Proposal"
    )
    and not exists (
      "Activity Not Done"
    )
    and not exists (
      "Do Not Perform Activity Proposal"
        union "Rejected Do Not Perform Activity Proposal"
    )

define function doNotPerform(task Task):
  singleton from (
    task.modifierExtension E
      where E.url = 'http://hl7.org/fhir/StructureDefinition/request-doNotPerform'
  ).value as boolean
