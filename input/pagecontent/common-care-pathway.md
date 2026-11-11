This proposed ambulatory pathway is an example for organizing guideline-supported care. Adapt it to the care setting, participants, and service capabilities. Care may span several encounters and organizations; the diagram is not a required visit sequence.

<div>
  <img src="cpg-runtime-common-pathway.svg" alt="Establish identity and assess urgency, gather information, agree on care, request and deliver activities, then monitor and report. Repeat assessment as information changes." class="img-responsive" width="1000"/>
</div>

*Figure 1. A simplified common care pathway. Urgent escalation and reassessment can occur whenever indicated; local workflow determines the actual sequence.*

### Establish the context

| Activity | Purpose |
| --- | --- |
| Establish patient identity | Identify and record the subject of care. |
| Retrieve patient health summary | Obtain the available clinical context and identify information gaps. |
| Triage | Assess whether signs or symptoms require urgent or emergency care. |
| Emergency: escalate care | Arrange the appropriate urgent response or transfer when indicated. |
| Invoke applicable CCGs | Identify the **Computable Care Guidelines** relevant to the patient and situation. |
{:.grid}

### Assess and agree on care

| Activity | Purpose |
| --- | --- |
| Provide counseling | Discuss treatment options, consent, health education, and ongoing care with the patient. |
| Record observations | Gather history, examination findings, and other relevant observations. |
| Order tests | Request diagnostic tests, including any local or external fulfillment workflow. |
| Evaluate test results | Interpret findings with the history, examination, and other available information. |
| Record diagnosis | Record the clinical assessment reached from that information. |
| Order interventions | Authorize the selected care activities. |
{:.grid}

The guideline can propose an activity. Agreement, authorization, and fulfillment remain explicit workflow steps, as described in [Activity Flow](activityflow.html).

### Deliver, monitor, and report

| Activity | Purpose |
| --- | --- |
| Provide interventions | Perform the agreed and authorized activities and record what occurred. |
| Order medications | Request medication treatment through the relevant prescribing workflow. |
| Dispense medications | Supply medication against the appropriate prescription; administration is a separate activity. |
| Establish monitoring and follow-up | Review progress and plan the next assessment or action. |
| Discharge/refer patient | Coordinate transition to another setting, service, or guideline-based program. |
| Update the digital client record | Reconcile and record the information produced through care. |
| Generate reportable indicators | Produce patient-level management information and, where appropriate, aggregate reporting. |
{:.grid}

### Apply the example

Identify the actor, inputs, outputs, and system of record for each activity used locally. Check where the pathway resumes when results arrive or the patient's state changes. The [workflow and common-pathway topic](approach-implementation.html#patient-flow) explains the modeling boundaries, and the [Common Processes code system](CodeSystem-cpg-common-process-cs.html) provides the process vocabulary used by this guide.
