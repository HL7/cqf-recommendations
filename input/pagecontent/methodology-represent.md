<a id="represent"></a>

### Represent Step {#represent-step}

Use the selected recommendation, source rationale, and delivery assumptions to write a decision specification that clinicians can review before authoring FHIR artifacts and logic. The specification connects [clinical concepts](#concepts) to [criteria and example cases](#criteria) and shows how the recommendation reaches people in the [care process](#processes-1).

#### Describe the clinical concepts {#concepts}

Build a data dictionary that explains each input's clinical meaning, context, source or collection method, datatype, units, timing, and candidate code or representation. The terminologist proposes mappings and records where they cover only part of the intended meaning. Clinical reviewers resolve ambiguities about what counts for the decision, and the local data owner confirms how the facts are captured. Work on WHO operational specifications surfaced ambiguous and composite concepts that required clinical review during mapping. [Pretty et al., 2023](https://doi.org/10.1136/bmjhci-2022-100691)

This historical Opioid Prescribing Guideline excerpt illustrates the structure of a data dictionary. Read its clinical content in the context of the source guideline and version.

{% include opg-recommendation-4/opg-recommendation-04-05-data-dictionary.html %}

#### Specify the decision criteria {#criteria}

Write the inclusion and exclusion criteria, timing, exceptions, and expected result in terms of the dictionary. Tie each criterion to the source passage or to a documented interpretation. If a criterion depends on a result within a time window, have the clinical reviewer specify what happens at the boundary and when the result is absent or conflicts with another result. Record any open question with the person who can resolve it. Agree on the rationale and expected output for example cases before testing implementation behavior.

This historical example shows one way to express the decision criteria and response options for review. The When/Then block is illustrative pseudocode.

<style>
  .cpg-criteria-example {
    margin-block: 1em;
    padding: 1em 1.25em;
    border: 1px solid #c3cdd7;
    border-radius: 4px;
    background: #f7f9fb;
    font-family: monospace;
  }
  .cpg-criteria-example > p {
    color: #183e59;
  }
  .cpg-criteria-example ul {
    padding-inline-start: 1.5em;
  }
  .cpg-criteria-example li + li {
    margin-top: 0.25em;
  }
  .cpg-criteria-example > ul:last-child {
    margin-bottom: 0;
  }
</style>

<div class="cpg-criteria-example" markdown="1">

**When**

- Provider is prescribing an opioid analgesic with ambulatory misuse potential in the outpatient setting
- Opioid review is useful for this patient:
  - Patient is 18 or over
  - Patient does not have evidence of sickle cell disease
  - Patient does not have findings indicating limited life expectancy
  - Patient does not have orders for therapies indicating end of life care
  - Patient is not undergoing active cancer treatment:
    - Patient has had at least 2 office visits within the past 12 months with an oncology specialist present, or
    - Patient has had at least 2 office visits within the past 12 months with a CDC malignant cancer condition diagnosis
  - Patient does not have conditions likely terminal for opioid prescribing present
- Patient Morphine Milligram Equivalent (MME) greater than or equal to 50

**Then**

- Calibrate to lowest opioid dose needed for expected results and exercise care when changing opioid dosages:
  - Document - Will prescribe a lower dose
  - Document - Will calibrate a gradual change in dosage
  - Snooze - Benefits outweigh risks, snooze 3 months
  - Snooze - Short term benefits outweigh risks, snooze 1 month
  - Snooze - N/A add comment, snooze 3 months

</div>

#### Describe delivery in the care process {#processes-1}

Sketch who supplies the inputs, when the decision arises, who sees the result, and what they can do with it. Link each decision in the sketch to the written criteria so reviewers can check both its clinical meaning and its place in the workflow. Work with the local workflow owner to establish which parts of the process the implementation can support.

{% include cpg-diagram.html src="cpg-method-translation.svg" alt="Historical opioid prescribing workflow. An order-sign event leads through criteria and a calculation to either no alert or a message with clinician response options." caption="Use this historical example to review the branches from the trigger to the clinician's response. The [functional description](#criteria) gives the criteria for the version shown." %}

##### Deliver a contextualized message {#delivery-of-contextualized-narrative}

When the intended intervention is a notification, specify the message, recipient, timing, and patient context that helps the recipient interpret it.

##### Propose an actionable intervention {#actionable-intervention}

If the intervention proposes an action, describe the proposed request, who can accept it, and what resulting event would indicate fulfillment. A delivery that ends at the request can still describe the expected event for later assessment.

##### Integrate with the local process {#process-integration}

If the implementation also tracks fulfillment, describe who acts, what event is recorded, and how it is linked to the request. The local workflow owner confirms what the system and authorized users can do. [Activity flow](activityflow.html)

#### Hand off the reviewed specification {#reviewed-specification}

Clinical reviewers confirm the interpretation and expected cases. The knowledge engineer carries the reviewed data dictionary, criteria, workflow sketch, and cases into Translate, with unresolved questions and their owners visible alongside them. Use the [L2 checklist](clinical-guidelines-development-L2-checklist.html) to review the structured specification.

{% include chapter-navigation.html section="Methodology" unit="step" overview="methodology.html" previous="methodology-select.html" previous_title="Select" next="methodology-translate.html" next_title="Translate" %}
