This page was reorganized from the single Methodology page of the previous version of this guide, and its guidance was expanded (see the [change log](changes.html)).
{:.modified-content}

<a id="represent"></a>

### Represent Step {#represent-step}

Use the selected recommendation, source rationale, and delivery assumptions to write a decision specification that clinicians can review before authoring FHIR artifacts and logic. The specification connects [clinical concepts](#concepts) to [criteria and example cases](#criteria) and shows how the recommendation reaches people in the [care process](#processes-1).

The represent step involves taking the narrative input from the select step, the _who_, _what_, _when_, _where_, and _why_, and further refining it to produce a _data dictionary_ of concepts, _functional descriptions_ of the criteria involved in the recommendations, and _flow diagrams_ illustrating how the recommendations should be applied in a clinical context, to create semi-structured (L2) content that is domain-specific (i.e. clinician-oriented), but informed by health informatics concerns to ensure accurate and unambiguous communication of guideline intent. This step is typically performed by a cross-functional team consisting of at least:

* A _clinical_ subject matter expert, familiar with the guideline content and the domain
* A _health informaticist_, familiar with the target standards (i.e. FHIR, CQL, and CPG)
* A _terminologist_, to ensure appropriate granularity and selection of concepts


#### Describe the clinical concepts {#concepts}

At this step, concepts referred to by the narrative are identified and represented as data elements within a data dictionary. This content typically takes the form of a spreadsheet, or even a table within a text document, and identifies, for each data element:

* **Description**: A precise description of the data element needed, in domain-specific language
* **Context**: The context in which the data element is used or needed
* **Details**: Details about the data element, including how it might be gathered, and how it is relevant
* **Modeling**: The conceptual type of data, including how it might be represented in potential target environments


Build a data dictionary that explains each input's clinical meaning, context, source or collection method, datatype, units, timing, and candidate code or representation. The terminologist proposes mappings and records where they cover only part of the intended meaning. Clinical reviewers resolve ambiguities about what counts for the decision, and the local data owner confirms how the facts are captured. Work on WHO operational specifications surfaced ambiguous and composite concepts that required clinical review during mapping. [Pretty et al., 2023](documentation-approach-cds-implementation-evidence.html#ref-pretty-2023)

This historical Opioid Prescribing Guideline excerpt illustrates the structure of a data dictionary. Read its clinical content in the context of the source guideline and version.

{% include opg-recommendation-4/opg-recommendation-04-05-data-dictionary.html %}

<div class="new-content" markdown="1">

When defining a feature, agree on the terminology, units, source, time window, number of expected values, and selection rule. For weight, the admission value and the latest measurement in an encounter answer different questions. Specify what to do with missing, stale, and conflicting records. The [WHO Digital Adaptation Kits](https://www.who.int/publications/i/item/9789240089907) illustrate this kind of semi-structured, reviewable specification.

</div>


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

This functional description provides a clear representation of what should happen, when, where, to whom, and by whom, tying together all the aspects of the recommendation, and facilitating communication of those aspects to the knowledge engineers in the _translate_ step.


#### Describe delivery in the care process {#processes-1}

There are a wide variety of methods and approaches available for representing and communicating the details of a workflow. One of the simplest, and most widely used is the [flowchart](https://en.wikipedia.org/wiki/Flowchart), a versatile diagramming tool with virtually ubiquitous authoring and viewing support, and that is immediately understandable. For these reasons, this methodology focuses on the use of flowcharts to visually represent processes. In particular, the processes that have been most useful are simple flow diagrams that provide a visual representation of the functional description.

Of particular importance at this step is representing the selected level of enablement for the processes and activities involved in the recommendations, as discussed in the following sections.


Sketch who supplies the inputs, when the decision arises, who sees the result, and what they can do with it. Link each decision in the sketch to the written criteria so reviewers can check both its clinical meaning and its place in the workflow. Work with the local workflow owner to establish which parts of the process the implementation can support.

{% include cpg-diagram.html src="cpg-method-translation.svg" alt="Historical opioid prescribing workflow. An order-sign event leads through criteria and a calculation to either no alert or a message with clinician response options." caption="Use this historical example to review the branches from the trigger to the clinician's response. The [functional description](#criteria) gives the criteria for the version shown." %}

##### Deliver a contextualized message {#delivery-of-contextualized-narrative}

When the intended intervention is a notification, specify the message, recipient, timing, and patient context that helps the recipient interpret it.

At this level of enablement, recommendation content is delivered as contextualized narrative, or informational messages. This is typically represented simply by the Send message activity. For example, if the intended delivery for Opioid Guideline recommendation 4 is just an alert statement, like a reminder or notification, then all that is needed is the _Send message_ activity.


##### Propose an actionable intervention {#actionable-intervention}

If the intervention proposes an action, describe the proposed request, who can accept it, and what resulting event would indicate fulfillment. A delivery that ends at the request can still describe the expected event for later assessment.

At this level of enablement, recommendation content is delivered as a structured activity that can be understood and acted upon by the consuming system. For example, the Opioid Guideline recommendation 4 at this level of enablement might be an updated order with a reduced dosage, or a recommendation to order an alternative non-opioid therapy. This level of enablement can use any of the available activity types, but only specifies integration at the _request_ level. In other words, the result of the decision support is a proposal for a recommended activity, but _whether_ and _how_ that proposal is accepted and fulfilled is not specified by the computable content, rather implementation sites determine how a _request_ becomes an _event_.


##### Integrate with the local process {#process-integration}

If the implementation also tracks fulfillment, describe who acts, what event is recorded, and how it is linked to the request. The local workflow owner confirms what the system and authorized users can do. [Activity flow](activityflow.html)

At this level of enablement, recommendation content is delivered not only as structured activities using the _request_ resources, but the content also describes expected _fulfillment_ workflow to get from the _request_ to the actual _event_. For example, the content for recommendation 4 might include the process not only for prescribing the alternative non-opioid therapy, but for fulfilling that request by actually filling the prescription. Specifying recommendations to this level of enablement is significantly more involved because of the variability of fulfillment workflows across sites.


#### Hand off the reviewed specification {#reviewed-specification}

Clinical reviewers confirm the interpretation and expected cases. The knowledge engineer carries the reviewed data dictionary, criteria, workflow sketch, and cases into Translate, with unresolved questions and their owners visible alongside them. Use the [L2 checklist](clinical-guidelines-development-L2-checklist.html) to review the structured specification.

{% include chapter-navigation.html section="Methodology" unit="step" overview="methodology.html" previous="methodology-select.html" previous_title="Select" next="methodology-translate.html" next_title="Translate" %}
