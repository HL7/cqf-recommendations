This page was reorganized and editorially revised in this version of the guide (see [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639) in the [change log](changes.html)).
{:.modified-content}

A basic approach that may help with addressing appropriate separations of concerns is to consider where certain knowledge engineering artifacts may be situated when considering both tiers of functionality and levels of representation as shown in the table below.

<div class="modified-content" markdown="1">

{% capture matrix_text %}
  <p><strong>Data</strong></p>
  <ul>
    <li><strong>L1: Narrative.</strong> Clinical concepts and relevant patient information.</li>
    <li><strong>L2: Semi-structured.</strong> Data dictionary, terminology choices, time and source rules.</li>
    <li><strong>L3: Structured.</strong> Profiles, CodeSystems, ValueSets, and data requirements.</li>
    <li><strong>L4: Executable.</strong> Validated local mappings and data access.</li>
  </ul>
  <p><strong>Clinical logic</strong></p>
  <ul>
    <li><strong>L1: Narrative.</strong> Recommendation and clinical conditions.</li>
    <li><strong>L2: Semi-structured.</strong> Decision tables, process models, and reviewed cases.</li>
    <li><strong>L3: Structured.</strong> Libraries, activity and plan definitions, and measures where needed.</li>
    <li><strong>L4: Executable.</strong> Evaluated results from the configured engine or translated logic.</li>
  </ul>
  <p><strong>Forms</strong></p>
  <ul>
    <li><strong>L1: Narrative.</strong> Information to provide or review.</li>
    <li><strong>L2: Semi-structured.</strong> User stories, interaction sketches, and branching rules.</li>
    <li><strong>L3: Structured.</strong> Questionnaire and supported population and extraction expressions.</li>
    <li><strong>L4: Executable.</strong> Rendered interactions, permissions, and routing.</li>
  </ul>
{% endcapture %}

{% include cpg-diagram.html src="cpg-model-artifact-matrix.svg" ratio="1200 / 792" alt="Work products across four representation levels, with rows for Data, Clinical logic, and Forms. The complete cell contents are also available in the text version below." caption="Figure 1. Levels of Representation by Tiers of Functionality with Examples (adapted from Rhodes, B, Database Consulting Group, 2019). Use the [L1–L4 checklists](checklists.html) to review the work products at each level." text_version=matrix_text %}

</div>

Across the top are the knowledge levels, from narrative text (Level 1) on the left through successively more structured representations that end with running, executable software at the right (Level 4). In the first row, the data tier (T1) represents the concepts and data elements involved in the guideline. Below that, the logic tier (T2) represents the business and process rules of the guideline, and in the last row, the forms or user-interface tier (T3) represents the user interactions with the guideline content. Refer to [Tiers of Functionality](documentation-approach-07-tiers-of-functionality.html) and [Levels of Representation](documentation-approach-06-01-levels-of-knowledge-representation.html).
{:.modified-content}

Note that the levels of knowledge representation are a continuum, with discrete categories introduced in the methodology to help inform discussions and communicate the concepts involved. Typically, the initial guideline content is published in narrative form (L1), but guidelines will often contain diagrams, charts, and other depictions that lean towards semi-structured (L2) representation.


