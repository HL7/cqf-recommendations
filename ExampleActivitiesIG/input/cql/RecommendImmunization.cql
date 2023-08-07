library RecommendImmunization

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

codesystem "Immunization Recommendation Status Codes": 'http://terminology.hl7.org/CodeSystem/immunization-recommendation-status'

code "Immunization Due": 'due' from "Immunization Recommendation Status Codes"
code "Immunization Overdue": 'overdue' from "Immunization Recommendation Status Codes"
code "Immunization Immune": 'immune' from "Immunization Recommendation Status Codes"
code "Immunization Contraindicated": 'contraindicated' from "Immunization Recommendation Status Codes"
code "Immunization Complete": 'complete' from "Immunization Recommendation Status Codes"

context Patient

/* Recommendation to immunize the patient */

/*
NOTE: This recommendation is dramatically simplified to illustrate the general
pattern for a positive recommendation, with the ability for users to reject
the recommendation, and flexibility in how the recommendation is achieved.

Specifically:
* There is no terminology, any immunization request/event on any topic will do
* There is no timing, any immunization request/event will do at any time
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

define "Active or Completed Immunization":
  [Immunization] C
    where C.status in { 'completed' }

define "Immunization Not Done":
  [Immunization] C
    where C.status in { 'not-done' }

define "Immunization Proposal":
  [ImmunizationRecommendation] R
    let Recommendation: First(R.recommendation) // NOTE: Should select specific recommendation here based on vaccineCode
    where Recommendation.forecastStatus ~ "Immunization Due"
      or Recommendation.forecastStatus ~ "Immunization Overdue"

define "Immunization Not Proposed":
  [ImmunizationRecommendation] R
    let Recommendation: First(R.recommendation) // NOTE: Should select specific recommendation here based on vaccineCode
    where Recommendation.forecastStatus ~ "Immunization Immune"
      or Recommendation.forecastStatus ~ "Immunization Contraindicated"
      or Recommendation.forecastStatus ~ "Immunization Complete"

define "Is Recommendation Applicable":
  "Inclusion Criteria"
    and not exists (
      "Active or Completed Immunization"
        union "Immunization Not Done"
    )
    and not exists (
      "Immunization Proposal"
        union "Immunization Not Proposed"
    )
