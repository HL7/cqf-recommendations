**Methodology:** [Overview](methodology.html) · [Previous: Select](methodology-select.html) · [Next: Translate](methodology-translate.html)

<a id="represent"></a>

### Represent Step {#represent-step}

Create semi-structured content that clinicians can inspect without reading CQL. Review it with clinical, informatics, and terminology experts before using it as the specification for translation.

#### Concepts

For each data element, record its clinical description, context, collection/source, datatype, units, time, and candidate representation. Record inexact terminology mappings and unresolved meaning. Coding WHO operational specifications exposed ambiguous and composite concepts; mapping required clinical review rather than label matching. [Pretty et al., 2023](https://doi.org/10.1136/bmjhci-2022-100691).

The following historical Opioid Prescribing Guideline excerpt illustrates a data dictionary; it is an implementation example, not updated clinical advice.

{% include opg-recommendation-4/opg-recommendation-04-05-data-dictionary.html %}

#### Criteria {#criteria}

Write inclusion, exclusion, timing, exceptions, and expected results in precise clinical language. Link each decision to its source and add example cases. The existing example's functional description is retained below; interpret it with its source guideline and version.

{% include opg-recommendation-4/recommendation-04-05-functional-description.html %}

#### Processes {#processes-1}

Draw only the actors, decisions, information needs, and actions needed to review the recommendation. Accompany the diagram with the explicit criteria; a flowchart is not an executable specification.

<div style="clear: both;">
  <img src="cpg-method-translation.svg" alt="A clinical recommendation is refined into explicit concepts and criteria, then reviewed before FHIR and CQL authoring." class="img-responsive center-block" width="1000"/>
</div>


##### Delivery of contextualized narrative

Specify the message, intended recipient, timing, and relevant patient context. A notification can be the complete intended intervention.

##### Actionable intervention

Specify a proposed activity as a request resource. The local system and authorized people determine acceptance and fulfillment. Even a request-only implementation can describe the expected event for later assessment.

##### Process integration

Document how requests are fulfilled and tracked, including responsible actors and relevant events. This adds local workflow obligations; it does not make proposal generation equivalent to care delivery. See [activity flow](activityflow.html).

**Methodology:** [Overview](methodology.html) · [Previous: Select](methodology-select.html) · [Next: Translate](methodology-translate.html)
