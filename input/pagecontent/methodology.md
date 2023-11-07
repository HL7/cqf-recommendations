Within the overall framework of knowledge engineering described in the <a href="approach.html">approach</a> page, this implementation guide describes a methodology for moving between the knowledge levels. Note that this
methodology emphasizes that the knowledge levels are a continuum of knowledge representation, they are
not intended to be rigidly interpreted discrete categories, rather they serve as a framework for
discussing successively more structured and formal representations of knowledge content to aid in
the understanding, communication, and implementation of guideline content.

> NOTE: The methodology documented here is a general framework for applying the approach to produce standards-based, computable guideline content. For a detailed illustration of following the approach and methodology described in this implementation guide, refer to the [COVID-19 CPG Methodology Case Study](methodology-case-study.html).

### Content Implementation Guides {#content-igs}

Figure 3.1 below, FHIR-based Knowledge Representation Specifications, depicts four categories of specifications, with representative examples of each category, illustrating how the various pieces can be used together to deliver shareable clinical reasoning artifacts.

Following this model, a computable guideline is a FHIR Content Implementation Guide, and specifically, a content IG that _conforms_ to the profiles and conformance requirements established by the CPG-on-FHIR IG.

<div>
<img src="types-of-igs.png" alt="Types of FHIR Implementation Guides" class="img-responsive img-rounded center-block" width="700" height="700"/>
</div>

_Figure 3.1_ Types of implementation guides: Specification, model, and content IGs

The following sections describe this diagram and the related specifications in more detail, and the subsequent sections of this topic summarize the conformance requirements and the proposed structuring and packaging methodology.

#### Foundational Standards

<p>The foundational standards on the bottom row of the diagram include the layers of FHIR, as well as expression language and integration standards including FHIRPath, Clinical Quality Language (CQL), CDS Hooks, and SMART.</p>

* [**FHIR**](http://hl7.org/fhir) includes five layers of concepts, each shown as an icon on the bottom row of the diagram.
    * **Foundation** layer – defines the core data exchange protocol.
    * **Conformance** layer – defines how resources, profiles, and terminologies are represented and used.
    * **Administration** layer – defines individuals, locations, organizations, and encounters.
    * **Clinical** layer – defines clinical information such as observations, medications, procedures, and orders.
    * **Reasoning** layer – provides definitional artifacts like plan and activity definitions, libraries, and measures.
* [**FHIRPath**](http://hl7.org/fhirpath) is a simple, yet powerful, model-independent expression language that is used extensively throughout FHIR to describe paths to elements on resources, and to define invariants on profiles.
* [**Clinical Quality Language (CQL)**](http://cql.hl7.org) is a superset of FHIRPath that provides an author-friendly format for the description of clinical logic, as well as a machine-friendly format for processing the logic.
* [**CDS Hooks**](http://cds-hooks.hl7.org) is an HL7 standard specification for integrating decision support services with clinical systems. It is primarily focused on clinician-facing remote decision support within an EHR.</li>
* [**SMART-on-FHIR (SMART)**](http://hl7.org/fhir/smart-app-launch.html) is an HL7 standard specification for integrating clinical applications into EMRs using FHIR.

#### Model Implementation Guides

The middle row on the left of the Figure 4 shows the Model Implementation Guides (IGs), typically derived from FHIR Administration and Clinical resources such as Patient, Encounter, and MedicationRequest. These Model IGs are typically built to address a broad range of use cases, focused on a particular target realm or domain.

* [**International Patient Summary (IPS)**](http://hl7.org/fhir/uv/ips) is a set of internationally applicable FHIR profiles used to share an extract of essential patient healthcare information across international boundaries. As a result, it forms an excellent foundation for expressing universally applicable content guidelines such as the WHO Antenatal Care (WHO ANC).
* [**US Core**](http://hl7.org/fhir/us/core) is a set of profiles focused on enabling exchange of the US Clinical Data for Interoperability (USCDI) and is supported by a broad range of EMR vendors within the US.
* [**QI-Core**](http://hl7.org/fhir/us/qicore) is a set of profiles that derives from US Core to enable quality improvement use cases such as quality measurement and decision support within the US.

#### Specification Implementation Guides

The middle row on the right of the Figure 4 shows the Specification Implementation Guides, which derive from the FHIR Clinical Reasoning resources to provide implementation guidance and conformance requirements for the creation, distribution, evaluation, and maintenance of shareable clinical knowledge. These include the Quality Measure IG (QM), Data Exchange for Quality Measures (DEQM), the Clinical Practice Guidelines IG (CPG-on-FHIR), and Evidence-based Medicine on FHIR (EBM-on-FHIR).

* [**Quality Measure IG (QM)**](http://hl7.org/fhir/us/cqfmeasures) provides guidance on and conformance requirements for the use of the FHIR Reasoning resources, Measure and Library, to create and share clinical quality measures.
* [**Data Exchange for Quality Measures (DEQM)**](http://hl7.org/fhir/us/davinci-deqm) provides guidance for reporting quality measures.
* [**Structured Data Capture (SDC)**](http://hl7.org/fhir/uv/sdc) provides guidance for building and capturing structured data using questionnaires
* [**Clinical Practice Guidelines IG (CPG-on-FHIR)**](http://hl7.org/fhir/uv/cpg) (this implementation guide) demonstrates how to build shareable computable guideline content.
* [**Evidence-Based Medicine on FHIR (EBM-on-FHIR)**](http://build.fhir.org/clinicalreasoning-evidence-and-statistics.html) provides interoperability (standards for data exchange) for those producing, analyzing, synthesizing, disseminating and implementing clinical research (evidence) and recommendations for clinical care (clinical practice guidelines). It specifies resources and patterns for the exchange of data involved in evidence-based medicine including study results, quality of evidence and strength of recommendation and relevant context, environmental surveys, and systematic reviews.

#### Content Implementation Guides

In the top row of Figure 4, the Content Implementation Guides are FHIR Implementation Guides. These IGs are not necessarily balloted as HL7 standards; rather, they use the FHIR publication toolchain to support authoring and distribution as depicted in the rest of the diagram. The content is stewarded by separate authorities such as quality agencies, specialty societies, and guideline developers; groups that have their own governance and maintenance policies. The content IGs conform to the specification IGs on the right of row 2, and typically make use of the model IGs on the left of row 2 to define content focused on a particular realm.

* [**HEDIS IG**](http://build.fhir.org/ig/cqframework/hedis-ig) contains Healthcare and Effectiveness Data and Information Set (HEDIS) quality measures expressed using FHIR Reasoning Measure and Library resources and conforming to the Quality Measure IG (QM) profiles.
* [**CDC Opioid Prescribing IG**](http://build.fhir.org/ig/cqframework/opioid-cds-r4) contains decision support content to streamline guideline implementation regarding the use of opioids for chronic pain in clinical settings.
* [**World Health Organization Antenatal Care (WHO ANC)**](http://build.fhir.org/ig/who-int/anc-cds) IG contains decision support content to streamline guideline implementation of the World Health Organization's recommendations on antenatal care for a positive pregnancy experience.

### Overview

Overall, the methodology used by this implementation guide consists of the following steps:

* **Select:** Select content and recommendations for implementation
* **Represent:**Apply selected recommendations to the implementation approach
* **Translate:** Express concepts, flow diagrams, and narrative content formally
* **Validate:** Build and run test cases to verify expected functionality

Note that throughout the process of applying this methodology, the various teams will necessarily make decisions, balancing trade-offs between effort, feasibility, and value. The decisions, and especially the rationale for how they were made, are in and of themselves important products of this process, and should at the very least be captured as supplemental documentation within the content implementation guide. Often, these decision points will surface as configuration capabilities in the resulting knowledge artifacts, enabling implementation sites to understand the trade-offs, and make informed decisions about appropriate configuration. Surfacing these capabilities and decisions with appropriate documentation is critical to fully enabling reusable, shareable knowledge artifacts.

#### Select

The _select_ step involves selecting content and recommendations for implementation, as well as determining the implementation approach for the recommendation. The [approach](approach.html) section provides detailed information on the many factors to be considered as part of this process. For the purposes of this methodology, we focus on the output of that process as having identified:

* **Personas**: _Who_ are the participants in the recommendation and what roles do they play?
* **Activities**: _What_ needs to happen?
* **Processes**: _When_ does it happen?
* **Settings**: _Where_ do the activities in the recommendation occur?
* **Support**: _Why_ should it happen?

The outcome of this step is typically in the form of narrative (L1 content) requirements, sometimes accompanied by explanatory figures and diagrams (approaching L2).

For a more detailed discussion of this step, refer to the [Select Step](methodology.html#select-step) topic.

#### Represent

The _represent_ step involves further refining and detailing the concepts, activities and processes identified in the _select_ step to create semi-structured (L2) content that is domain-specific (i.e. clinician-oriented), but informed by health informatics concerns to ensure accurate and unambiguous communication of guideline intent. This is accomplished by producing:

* **Concepts**: Data dictionary entries describing the concepts referred to by the recommendation
* **Criteria**: Functional descriptions (i.e. domain-specific pseudo-code)
* **Processes**: Flow diagrams connecting the personas, activities, and settings to clinical processes

For a more detailed discussion of this step, refer to the [Represent Step](methodology.html#represent-step) topic.

#### Translate

The _translate_ step involves expressing the semi-structured (L2) data elements, activities, and flow diagrams as structured (L3) content. Specifically, as FHIR profiles (i.e. _case features_), CPG activities, CQL logic, and CPG recommendations, strategies, and pathways.

* **Profiles**: Data elements are represented as FHIR profiles of the appropriate resource
* **Terminology**: CodeSystem and ValueSet resources as appropriate
* **Criteria**: CQL libraries of criteria and related expressions, contained in Library resources
* **Activities**: ActivityDefinition resources
* **Recommendations**: PlanDefinition resources focused on particular recommendations
* **Strategies**: PlanDefinition resources focused on particular conditions or states
* **Pathways**: PlanDefinition resources describing the overall pathway

For a more detailed discussion of this step, refer to the [Translate Step](methodology.html#translate-step) topic.

#### Validate

The _validate_ step involves ensuring that the structured content meets the requirements and expectations for conformance and intent, and that it behaves as expected. This typically involves the creation of at least a positive and negative _scenario_, or test case, that can be used to test the behavior of the structured content. In practice, this requires the ability to _execute_ the L3 content in at least simulated environments. For content structured according to the CPG, and delivered via standard mechanisms such as SDC Questionnaires, Clinical Reasoning activities and processes, or CDS Hooks, there are reference implementations and sandbox environments that can provide this level of validation.

* **Conformance**: Conformance checking of the profiles and conformance requirements of this implementation guide
* **Checklists**: Checklists to help determine readiness and facilitate communication
* **Expert Review**: Review by relevant subject matter experts
* **Test Scenarios**: Test scenarios that exercise happy paths as well as edge cases
* **Unit Testing**: Testing that each piece functions correctly in isolation
* **Component Testing**: Testing that the components function correctly together
* **Integration Testing**: Testing that the artifacts behave correctly in simulated target environments

For a more detailed discussion of this step, refer to the [Validate Step](methodology.html#validate-step) topic.

### Select Step {#select-step}

The _select_ step involves selection of the specific content for implementation, along with the target enablement strategies, specifically identifying the _who_, _what_, _when_, _where_, and _why_ for the selected content.

There are numerous factors to consider in selecting which recommendations and activities to develop, including:

* **Value**: What is the potential value of implementation of the recommendation to patients, clinicians, and health systems and institutions?
* **Effort**: What is the level of effort involved in producing a computable representation of the recommendation? What is the upstream vs downstream effort? What are the maintenance considerations?
* **Feasibility**: What is the availability of the data required to successfully evaluate a computable representation of the recommendation?
* **Delivery mechanisms**: What are the technical capabilities required to support computable representation of the recommendation? And what are the expected technical capacities of potential target implementation environments?

These considerations will then inform the selection of recommendations and related activities for implementation along the continuum of [Levels of Enablement](documentation-approach-03-conformance-levels.html). Specifically highlighting the portion of that continuum from delivery of contextualized narrative (i.e. messages only) through actionable intervention (i.e. CDS Hooks requests):

* **Delivery of contextualized narrative**: System displays a guideline recommendation as a notification or alert.
* **Actionable intervention**: System provides computable representation of the recommended activity as a _request_ resource.
* **Process integration**: System provides implementation of a fully documented workflow along with its status, using a combination of _request_ and _event_ resources, typically coordinated as described in the FHIR [worfklow](http://hl7.org/fhir/worfklow) topic using _task_ resources.

This step is typically performed by a cross-functional team consisting of at least:

* A _clinical_ subject matter expert, familiar with the guideline content and the domain
* A _health informaticist_, familiar with the target standards (i.e. FHIR, CQL, and CPG)
* A _terminologist_, to ensure appropriate granularity and selection of concepts

In addition, technical and informatics specialists from specific (or at least representative) target implementation sites can provide valuable feedback during this step to ensure implementation feasibility.

#### Personas

Personas are narrative descriptions of the actors and roles, or the _who_, referred to by the guideline. For example, nurse midwife, community healthworker, and pregnant mother are all examples of personas.

To provide a potential starting point for formally identifying personas, this implementation guide provides a [Common Personas](CodeSystem-cpg-common-persona-cs.html) CodeSystem based on the WHO recommendation for [Classifying health workers](https://www.who.int/hrh/statistics/Health_workers_classification.pdf). This recommendation uses codes from the [International Standard Classification for Occupations](http://www.ilo.org/public/english/bureau/stat/isco/index.htm) but defines several additional categories of workers. In addition, the codes in that recommendation are focused on health workers, so codes for patient and care partner personas need to be considered as well.

Where a code from the ISCO exists, it is used. Where a WHO recommended health worker category is used, a code is constructed beginning with a `W`. Where a code is introduced by this implementation guide, it is constructed beginning with a `C`.

Content conforming to this implementation guide MAY identify personas using the [Common Personas](CodeSystem-cpg-common-persona-cs.html) code system.

#### Activities

Activities identified as part of the select step are the narrative description of _what_ needs to happen. This implementation guide defines the [Activity Type](CodeSystem-cpg-activity-type-cs.html) CodeSystem to support computable representation of clinical activities:

* **Send a message**: Communicating a particular message to a patient or other related participant
* **Collect information**: Collect information from a patient or other relevant participant using a questionnaire
* **Order medication**: Order a particular medication for a patient
* **Dispense medication**: Dispense a particular medication to a patient
* **Administer medication**: Administer a particular medication to a patient
* **Document medication**: Document a particular medication in use by a patient
* **Recommendation immunization**: Recommend a specific immunization for a patient
* **Order service**: Order a procedure or service for a patient
* **Enroll a patient**: Enroll a patient in a particular pathway or strategy
* **Propose diagnosis**: Propose a diagnosis about a patient
* **Record detected issue**: Record a detected issue about a patient
* **Record inference**: Record an inference about a patient
* **Report flag**: Report a flag on a patient

#### Processes

Processes identified as part of the select step are the narrative description of _when_ something needs to happen, particularly as it relates to clinical care delivery.

The common processes identified in this implementation guide are based on surveys of guideline content, both in the examples used in this guide, as well as other guideline content from various clinical domains and guideline authors. The result is the definition of a [_common pathway_](common-care-pathway.html) that is intended to be applicable in any guideline-based care content.

Using this common pathway, content can indicate where in the overall process of care delivery a given recommendation or intervention should occur.

Content conforming to this implementation guide MAY identify processes using the [Common Processes](CodeSystem-cpg-common-process-cs.html) code system.

#### Settings

Settings identified as part of the select step are the narrative description of _where_ something needs to happen.

For settings, this implementation guide uses the [HL7 V3 ServiceDeliveryLocationRoleType](http://hl7.org/fhir/v3/ServiceDeliveryLocationRoleType/vs.html) value set, as it contains generally applicable, broadly standardized settings for use in the computable representation of guideline recommendations.

Content conforming to this implementation guide MAY identify settings using the [HL7 V3 ServiceDeliveryLocationRoleType](http://hl7.org/fhir/v3/ServiceDeliveryLocationRoleType/vs.html) value set.

#### Support

Two aspects of supporting information are considered for recommendations. First, supporting documentation related to the guideline content itself, and second, pertinent positive or negative information related to determining the applicability of a recommendation to a particular patient.

##### Guideline Supporting Information

Supporting documentation for a recommendation is critical to ensuring the definition can be traced back to reliable and credible sources. The [Supporting Documentation](http://hl7.org/fhir/R4/clinicalreasoning-topics-supporting-documentation.html) topic in the base FHIR specification describes the basic mechanism for achieving this with the Clinical Reasoning resources.

Clinical guideline content typically assigns ratings for aspects of guidance such as the quality of evidence, or the strength of the recommendation. However, due to the broad range of use cases and rating needs, different guidelines use different rating systems and grading characteristics to communicate this information. Following the base guidance provided as part of the FHIR Clinical Reasoning module, this implementation guide provides support for the following rating concepts:

* [**Quality of evidence**](http://hl7.org/fhir/extension-cqf-qualityofevidence.html): The quality of the evidence that supports a recommendation
* [**Strength of recommendation**](http://hl7.org/fhir/extension-cqf-strengthofrecommendation.html): The strength of the recommendation
* [**Direction of recommendation**](StructureDefinition-cpg-directionOfRecommendation.html): The direction (positive or negative) of the recommendation

Content conforming to this implementation guide SHALL provide references to supporting documentation for a recommendation in the form of a `relatedArtifact` element specifying a citation to the guideline.

Due to the variability in rating systems among guideline content, this implementation is not prescriptive about what grading system should be used, and the example bindings from the base specification apply. However, content conforming to this implementation guide SHALL identify a rating system and use that to provide rating information for recommendations and guidance, and provide documentation on what rating system was selected and how it is communicated through the content.

Content conforming to this implementation guide SHALL provide the strength of a recommendation using the [strengthOfRecommendation](http://hl7.org/fhir/R4/extension-cqf-strengthofrecommendation.html) extension.

Content conforming to this implementation guide SHALL provide the quality of evidence for a recommendation using the [qualityOfEvidence](http://hl7.org/fhir/R4/extension-cqf-qualityofevidence.html) extension.

Content conforming to this implementation guide MAY provide the directionality of a recommendation using the [directionOfRecommendation](StructureDefinition-cpg-directionOfRecommendation.html) extension.

The [CPGComputablePlanDefinition](StructureDefinition-cpg-computableplandefinition.html) profile establishes the qualityOfEvidence, strengthOfRecommendation, and directionOfRecommendation extensions as appropriate for use on PlanDefinition instances to communicate ratings.

<blockquote>NOTE: The CPG-on-FHIR project is seeking feedback on whether this implementation guide should nominate a specific grading system and require conforming content to provide mappings when they use other grading systems.</blockquote>

##### Pertinent Information

Documenting pertinent information related to a recommendation is critical to helping the intended recipient determine why the recommendation applies in each particular case. For definitional content, pertinent information can typically be inferred from the content referenced by the logic involved. To support cases where pertinent information cannot be inferred from the content, as well as to allow content developers to highlight particular aspects, the `input` and `output` elements of the PlanDefinition can be used to identify pertinent information for the recommendation.

### Represent Step {#represent-step}

The represent step involves taking the narrative input from the select step, the _who_, _what_, _when_, _where_, and _why_, and further refining it to produce a _data dictionary_ of concepts, _functional descriptions_ of the criteria involved in the recommendations, and _flow diagrams_ illustrating how the recommendations should be applied in a clinical context. This step is typically performed by a cross-functional team consisting of at least:

* A _clinical_ subject matter expert, familiar with the guideline content and the domain
* A _health informaticist_, familiar with the target standards (i.e. FHIR, CQL, and CPG)
* A _terminologist_, to ensure appropriate granularity and selection of concepts

#### Concepts

At this step, concepts referred to by the narrative are identified and represented as data elements within a data dictionary. This content typically takes the form of a spreadsheet, or even a table within a text document, and identifies, for each data element:

* **Description**: A precise description of the data element needed, in domain-specific language
* **Context**: The context in which the data element is used or needed
* **Details**: Details about the data element, including how it might be gathered, and how it is relevant
* **Modeling**: The conceptual type of data, including how it might be represented in potential target environments

For example, the following data dictionary excerpt shows the data elements for recommendation 5 of the [Opioid Prescribing Guideline](examples-opg-guideline.html) example included in this implementation guide:

<div>
  <img src="opg-recommendation-5-data-dictionary.png" alt="OPG Recommendation 5 Data Elements" class="img-responsive img-rounded center-block"/>
</div>

#### Criteria

For criteria, the _represent_ step involves further refining the narrative from the _select_ step by creating a _functional description_, or a detailed, domain-specific description of the recommendation that is effectively clinical pseudo-code. For example, given the recommendation statement for Recommendation 5 from the CDC Opioid Prescribing Guideline:

> When opioids are started, providers should prescribe the lowest effective dosage. Providers should use caution when prescribing opioids at any dosage, should carefully reassess evidence of individual benefits and risks when considering increasing dosage to ≥50 morphine milligram equivalents (MME)/day, and should avoid increasing dosage to ≥90 MME/day or carefully justify a decision to titrate dosage to >90 MME/day (recommendation category: A, evidence type: 3).

The following functional description illustrates, in precise and clinical terms, how the recommendation could be applied in a clinical setting:

* When
    * Provider is prescribing an opioid analgesic with ambulatory misuse potential in the outpatient setting
    * Prescription is for treating chronic pain
    * Opioid review is use for this patient:
        * Patient is 18 or over
        * Patient does not have findings indicating limited life expectancy
        * Patient does not have orders for therapies indicating end of life care
        * Patient is not undergoing active cancer treatment:
            * Patient has had at least 2 encounters within the past year with any diagnosis of cancer
    * Patient Morphine Milligram Equivalent (MME) greater than or equal to 50
* Then
    * Recommend prescribing the lowest effective dosage[, and avoid increasing dosage to >= 90 MME]:
        * Will prescribe a lower dosage
        * Benefits outweigh risks, snooze 3 months
        * Active pain, snooze 1 month
        * N/A - see comment, snooze 3 months

This functional description provides a clear representation of what should happen, when, where, to whom, and by whom, tying together all the aspects of the recommendation, and facilitating communication of those aspects to the knowledge engineers in the _translate_ step.

#### Processes

There are a wide variety of methods and approaches available for representing and communicating the details of a workflow. One of the simplest, and most widely used is the [flowchart](https://en.wikipedia.org/wiki/Flowchart), a versatile diagramming tool with virtually ubiquitous authoring and viewing support, and that is immediately understandable. For these reasons, this methodology focuses on the use of flowcharts to visually represent processes. In particular, the processes that have been most useful are simple flow diagrams that provide a visual representation of the functional description.

For example, the following flow diagram illustrates the functional description for the Opioid Prescribing Guideline recommendation 5:

<div>
  <img src="opg-recommendation-5-flow-diagram.png" alt="OPG Recommendation 5 Data Elements" class="img-responsive img-rounded center-block"/>
</div>

Of particular importance at this step is representing the selected level of enablement for the processes and activities involved in the recommendations, as discussed in the following sections.

##### Delivery of contextualized narrative

At this level of enablement, recommendation content is delivered as contextualized narrative, or informational messages. This is typically represented simply by the Send message activity. For example, if the intended delivery for Opioid Guideline recommendation 5 is just an alert statement, like a reminder or notification, then all that is needed is the _Send message_ activity.

##### Actionable intervention

At this level of enablement, recommendation content is delivered as a structured activity that can be understood and acted upon by the consuming system. For example, the Opioid Guideline recommendation 5 at this level of enablement might be an updated order with a reduced dosage, or a recommendation to order an alternative non-opioid therapy. This level of enablement can use any of the available activity types, but only specifies integration at the _request_ level. In other words, the result of the decision support is a proposal for a recommended activity, but _whether_ and _how_ that proposal is accepted and fulfilled is not specified by the computable content, rather implementation sites determine how a _request_ becomes an _event_.

Note that even in the case that the decision support is only concerned with delivering actionable interventions, computable content can still communicate expectations for what a fulfilled request (or _event_) looks like, which still allows outcome and process metrics to be expressed.

##### Process integration

At this level of enablement, recommendation content is delivered not only as structured activities using the _request_ resources, but the content also describes expected _fulfillment_ workflow to get from the _request_ to the actual _event_. For example, the content for recommendation 5 might include the process not only for prescribing the alternative non-opioid therapy, but for fulfilling that request by actually filling the prescription. Specifying recommendations to this level of enablement is significantly more involved because of the variability of fulfillment workflows across sites.

### Translate Step

The _translate_ step involves using the narrative (L1) and semi-structured (L2) outputs from the _select_ and _represent_ steps to create formal, computable, standards-based representations of guideline content. This step is typically performed by a team consisting of at least:

* A _health informaticist_, familiar with standards-based representations and implementation in clinical systems
* A _knowledge engineer_, familiar with the tooling used to author and publish FHIR implementation guides
* A _knowledge author_, familiar with the standards involved in representation, including CQL, FHIR, and CPG
* A _terminologist_, familiar with the tools and terminologies required to author code system and value set content

A complete walkthrough of this process using freely available open source tools is available at the [Content IG Walkthrough](https://github.com/cqframework/content-ig-walkthrough).

#### Computable Clinical Practice Guideline

As discussed in the [content implementation guides](methodology.html#content-igs) section, a computable Clinical Practice Guideline (CPG) following this methodology is delivered as a FHIR Implementation Guide, and the first step to developing the content is to establish the content IG. This typically takes the form of a Github repository, similar to the [Sample Content IG](https://github.com/cqframework/sample-content-ig).

Pay particular attention at this step to the selection of the canonical URL for the computable guideline, as it will determine the base of the URLs for all the artifacts published by the IG, as well as enable resolution of artifacts when the IG is published at its canonical URL.

Many FHIR implementation guides are Health Level 7 (HL7) balloted specifications, and as such are published on the HL7 FHIR website. For example, the US Core implementation guide is published at http://hl7.org/fhir/us/core. However, for content IGs, the steward of the content will typically be the publisher, so the canonical base URL for the IG should be selected using a domain that the steward controls.

For open-source content with a commitment to maintain it, the [fhir.org](http://fhir.org) site can provide a publication alternative by following the [FHIR Community Process](http://fhir.org/community/process/).

#### Profiles

The data dictionary and related documentation are used to produce FHIR profiles. Note that not every data element will result in a FHIR profile, the number of profiles actually used depends on a number of factors, such as the variability between data elements, as well as the anticipated need for validation, versus reference.

For example, consider two data elements, both describing a laboratory result, but differing only in the value set used to distinguish the data element. If the elements are only referenced in criteria, Observation instances can be distinguished by referring to the value sets, and both data elements can use the same Laboratory Result profile. However, if there is a need to validate the instances as data elements, specific profiles should be used.

Broadly though, data elements defined in the data dictionary result in _case features_, or profiles that use the [CPGCaseFeatureDefinition](StructureDefinition-cpg-casefeaturedefinition.html) profile. Case features fall into two categories:

* **assertions**: Data that is asserted/documented as part of the patient record
* **inferences**: Data that is inferred from other assertions and/or inferences

Note that an _inferred_ case feature may be recorded as part of the patient record, so that it effectively becomes an _asserted_ case feature. And it may also be the case that _asserted_ case features can also be calculated based on other values in the patient record.

Because case features are aspects of the patient's record (or typically events that _have occurred_, as opposed to _are planned_), case features will typically be [_event_](http://hl7.org/fhir/event.html) resources.

Content conforming to this implementation guide SHOULD use the [CPG Event Activity Profiles](profiles.html#activity-profiles) as the basis for case feature definitions.

In addition, content implementation guides will typically select a target realm for deployment, and SHOULD select a set of [Interoperability Profiles](profiles.html#content-profiles) appropriate for that realm.

#### Terminology

For terminology, the _translate_ step involves identifying and/or constructing appropriate value sets for the concepts referred to in the selected recommendations. This step is typically performed by the terminologist with help from the knowledge engineering role to assist in creating FHIR representations. For terminology servers that already support authoring and distribution of FHIR ValueSet resources, this is less of an issue, but often there are not complete solutions available, and additional tooling is required to support the terminology publishing needs.

Specifically, terminology that is included as part of content implementation guides SHALL be at least [CPGShareableValueSet](StructureDefinition-cpg-shareablevalueset.html), and SHOULD be Computable, Publishable, and/or Executable, depending on the target.

For more discussion on the creation and distribution of value sets, see the [Terminology](terminology.html) page.

#### Criteria

For criteria, the _translate_ step involves expressing the inclusion and exclusion criteria, as well as any related logic, using Clinical Quality Language (CQL). This step is typically performed by a knowledge author using authoring environments such as [CDS Connect](https://cds.ahrq.gov/cdsconnect/authoring) or the [Atom CQL Language Plugin](https://github.com/cqframework/atom_cql_support).

Once the CQL libraries are authored, they can be included in the content implementation guide using the [binary adjunct loader](https://confluence.hl7.org/pages/viewpage.action?pageId=66938614#ImplementationGuideParameters-BinaryAdjunctFiles) feature of the FHIR IG publisher.

For more discussion on the creation and distribution of libraries, see the [Libraries](libraries.html)

#### Activities

For activities, the _translate_ step involves expressing the activities to be performed as part of the recommendations. Across guideline-based care, there are many different types of recommendations that may be given, such as the recommendation to conduct a specific test, to prescribe a specific medication, recommendation for a particular procedure, and many others. Following the general [workflow](http://hl7.org/fhir/R4/workflow.html) pattern established in FHIR, the activities within these recommendations are represented by the following patterns:

* [**Definition**](http://hl7.org/fhir/definition.html): Clinical, administrative, or other events that _can_ occur
* [**Request**](http://hl7.org/fhir/request.html): Clinical, administrative, or other events that _should_ or _are planned to_ occur
* [**Event**](http://hl7.org/fhir/event.html): Clinical, administrative, or other events that _are occurring_ or _have occurred_

##### Activity Definitions

Definitional activities are represented using the ActivityDefinition resource, which acts as a _template_ to describe the patient-independent aspects of the activity, and provides a means to build expressions to dynamically determine the values for patient-dependent aspects of the activity as part of _applying_ the definition to a particular patient context.

Readers of this implementation guide should refer to the [Definitional Artifacts](http://hl7.org/fhir/R4/clinicalreasoning-topics-definitional-resources.html) topic in the FHIR specification for general information on how ActivityDefinition resources are used to describe the activities that can be performed.

When applying ActivityDefinition resources in a patient context, the following specific parameters are available:

|Name|Description|
|----|----|
|Patient|The current Patient in context|
|Practitioner|The current Practitioner interacting with the clinical system|
|Encounter|The Encounter in progress, if one is currently in progress|
{:.grid}

For convenience, this IG provides pre-built parameterizable ActivityDefinition instances for each of the activity types:

|Activity|Parameters|
|--------|--------|
|[**AdministerMedication**](ActivityDefinition-cpg-administermedication-activitydefinition.html)|**MedicationRequest**: The detailed medication request to be administered. This may be an existing order, or it may be produced as part of the administer medication activity|
|[**CollectInformation**](ActivityDefinition-cpg-collectinformation-activitydefinition.html)|**QuestionnaireCanonical**: The canonical URL of the questionnaire to be used to collect the information|
|[**CommunicationRequest**](ActivityDefinition-cpg-communicationrequest-activitydefinition.html)|**CategoryCodeableConcept**: The category of communication|
|[**DispenseMedication**](ActivityDefinition-cpg-dispensemedication-activitydefinition.html)|**MedicationRequest**: The detailed medication request to be dispensed. This may be an existing order, or it may be produced as part of the dispense medication activity|
|[**DocumentMedication**](ActivityDefinition-cpg-documentmedication-activitydefinition.html)|**MedicationRequest**: The detailed medication request to be documented. This may be an existing order, or it may be produced as part of the document medication activity|
|[**Enrollment**]|**PathwayCanonical**: The canonical URL of the pathway or strategy in which the patient is enrolled/unenrolled|
|[**GenerateReport**]|**DefinitionCanonical**: The canonical URL of the metric, case report, or profile to use to generate the report|
|[**ImmunizationRequest**](ActivityDefinition-cpg-immunizationrequest-activitydefinition.html)|**VaccineCodeableConcept**: The vaccine being recommended|
|[**MedicationRequest**](ActivityDefinition-cpg-medicationrequest-activitydefinition.html)|**MedicationCodeableConcept**: The medication being proposed, as a CodeableConcept<br/>DoseQuantity: The quantity of medication<br/>DosesPerDay: The number of doses per day, as a decimal|
|[**ProposeDiagnosisTask**](ActivityDefinition-cpg-proposediagnosistask-activitydefinition.html)|**DiagnosisCodeableConept**: The diagnosis being proposed|
|[**RecordDetectedIssueTask**](ActivityDefinition-cpg-recorddetectedissue-activity.html)|**IssueCodeableConcept**: The issue being recorded|
|[**RecordInferenceTask**](ActivityDefinition-cpg-recordinference-activity.html)|**InferenceCodeableConcept**: The type of inference being recorded<br/>InferenceValue: The value of the inference being recorded|
|[**ReportFlagTask**](ActivityDefinition-cpg-reportflagtask-activitydefinition.html)|**IssueCodeableConcept**: The issue being flagged|
|[**ServiceRequest**](ActivityDefinition-cpg-servicerequest-activitydefinition.html)|**ServiceCodeableConcept**: The type of service being proposed|
{:.grid}

Content conforming to this implementation guide SHALL use at least the [CPG Shareable Activity Definition](StructureDefinition-cpg-shareableactivitydefinition.html) profile, and SHOULD use the Computable and Publishable profiles when specifying activity definitions.

##### Activity Requests (Proposals)

Proposed activities are represented with request resources, and for each type of activity, this implementation guide defines a proposal profile. These are effectively the _recommended action_ to be taken as part of a guideline recommendation, and in general they each specify:

* **Explanation**: A narrative statement providing the rationale, or explanation, for the recommendation
* **Source**: A link back to the guideline, and ultimately the evidence, that supports the recommendation
* **Pertinents**: The pertinent positive or negative information relevant to the recommendation

This implementation guide defines profiles for each of the request resources to be used as recommendation instances:

* [AdministerMedicationTask](StructureDefinition-cpg-administermedicationtask.html): Recommendation to administer a specific medication
* [CommunicationRequest](StructureDefinition-cpg-communicationrequest.html): Recommendation for a specific communication
* [DispenseMedicationTask](StructureDefinition-cpg-dispensemedicationtask.html): Recommendation to dispense a specific medication
* [DocumentMedicationTask](StructureDefinition-cpg-documentmedicationtask.html): Recommendation to document use of a specific medication
* [ImmunizationRequest](StructureDefinition-cpg-immunizationrequest.html): Recommendation for a particular immunization
* [MedicationRequest](StructureDefinition-cpg-medicationrequest.html): Recommendation for a specific medication
* [ProposeDiagnosisTask](StructureDefinition-cpg-proposediagnosistask.html): Recommendation to propose a specific diagnosis
* [QuestionnaireTask](StructureDefinition-cpg-questionnairetask.html): Recommendation to collect specific information using a questionnaire
* [EnrollmentTask](StructureDefinition-cpg-enrollmenttask.html): Recommendation to enroll (or unenroll) a patient in a pathway or strategy
* [GenerateReportTask](StructureDefinition-cpg-generatereporttask.html): Recommendation to generate a metric, measure, or case report
* [RecordDetectedIssueTask](StructureDefinition-cpg-recorddetectedissuetask.html): Recommendation to record a specific detected issue
* [RecordInferenceTask](StructureDefinition-cpg-recordinferencetask.html): Recommendation to record a specific inference
* [ReportFlagTask](StructureDefinition-cpg-reportflagtask.html): Recommendation to report a particular flag
* [ServiceRequest](StructureDefinition-cpg-servicerequest.html): Recommendation for a particular procedure or referral to a specialist or instructions for self-care such as smoking cessation counseling or exercise

These profiles are intended to be used for proposals, and so are modeled with the [proposal](http://hl7.org/fhir/codesystem-request-intent.html#request-intent-proposal) intent. Note that some implementations may go further and use the `plan` or even `order` intents of a request, depending on the capabilities of the systems involved.

Content conforming to this implementation guide SHALL use one of the recommendation instance profiles described above to ensure supporting information related to the recommendation is preserved through the recommendation instance.

Specific guideline content MAY define derived profiles for recommendation instances establishing additional constraints.

##### Activity Events

And finally, for each of the activity types, this implementation guide defines an _event_ profile for modeling when the activities have actually occurred. Each event profile typically describes:

* **source reference**: Usually the `instantiatesCanonical` element, referring back to the guideline (definitional) content
* **request reference**: Usually the `basedOn` element, referring back to the request the event is fulfilling
* **pertinent**: Pertinent positive or negative information relevant to the event

Note that because _event_ resources are part of the patient's _case_, it is often the case that activity events are also _case features_, so each of these profiles also provides support for specifying:

* [**case feature**](StructureDefinition-cpg-instantiatesCaseFeature.html): A reference to the case feature this event is an instance of
* [**case feature type**](StructureDefinition-cpg-caseFeatureType.html): Whether the case feature is _asserted_ or _inferred_
* [**case feature pertinence**](StructureDefinition-cpg-caseFeaturePertinence.html): The pertinence, positive, negative, or pathognomonic, of the case feature

The following table details the _event_ profiles for each activity type. Note that some activities have multiple event profiles.

|Activity|Event|
|----|----|
|Send a message|[CPGCommunication](StructureDefinition-cpg-communication.html)|
|Administer medication|[CPGMedicationAdministration](StructureDefinition-cpg-medicationadministration.html)|
|Collect information|[CPGQuestionnaireResponse](StructureDefinition-cpg-questionnaireresponse.html)|
|Dispense medication|[CPGMedicationDispense](StructureDefinition-cpg-medicationdispense.html)|
|Document medication|[CPGMedicationStatement](StructureDefinition-cpg-medicationstatement.html)|
|Enrollment|[CPGCase](StructureDefinition-cpg-case.html)|
|Generate report|[CPGMetricReport](StructureDefinition-cpg-metricreport.html)<br/>[CPGCaseSummary](StructureDefinition-cpg-casesummary.html)<br/>[CPGCasePlanSummary](StructureDefinition-cpg-caseplansummary.html)<br/>[CPGCasePlanProgressingNote](StructureDefinition-cpg-caseplanprogressingnote.html)|
|Order a medication|[CPGMedicationDispense](StructureDefinition-cpg-medicationdispense.html)<br/>[CPGMedicationAdministration](StructureDefinition-cpg-medicationadministration.html)<br/>[CPGMedicationStatement](StructureDefinition-cpg-medicationstatement.html)|
|Recommend an immunization|[CPGImmunization](StructureDefinition-cpg-immunization.html)|
|Order a service|[CPGProcedure](StructureDefinition-cpg-procedure.html)<br/>[CPGObservation](StructureDefinition-cpg-observation.html)|
|Propose a diagnosis|[CPGCondition](StructureDefinition-cpg-condition.html)|
|Record a detected issue|[CPGDetectedIssue](StructureDefinition-cpg-detectedissue.html)|
|Record an inference|[CPGObservation](StructureDefinition-cpg-observation.html)|
|Report a flag|[CPGFlag](StructureDefinition-cpg-flag.html)|
{:.grid}

Content conforming to this implementation guide SHALL use the event profiles defined above to ensure guideline supporting and tracking information is available for activities delivered in the context of a computable guideline.

#### Recommendations

This implementation guide uses the PlanDefinition resource to represent the recommendations of a guideline as an event-condition-action rule. The recommendation used in this way specifies:

* **Event**: When the recommendation guidance should be applied, typically identified as a named event within the workflow
* **Condition**: Applicability of the guidance at that point, based on current patient-state as described by the inclusion logic for the recommendation
* **Action**: The activity to be performed, typically represented as a simple message, or a more sophisticated ActivityDefinition to produce a _recommendation instance_

Readers of this implementation guide should refer to the [Applying a PlanDefinition](http://hl7.org/fhir/R4/plandefinition.html#12.18.3.3) topic for details on how an event-condition-action rule can be applied to a particular patient to produce guidance appropriate to that patient.

Content conforming to this implementation guide SHALL use the [cpg-recommendationdefinition](StructureDefinition-cpg-recommendationdefinition.html) profile to represent recommendation definitions.

#### Strategies

This implementation guide uses the PlanDefinition resource to represent specific sequences of activities executed at a point-in-time as a strategy. Readers of this implementation guide should be familiar with the [Workflow](http://hl7.org/fhir/R4/workflow.html) topic in the base FHIR specification. This implementation builds on the guidance there, providing some specific patterns for describing common activities as part of strategies. Specifically:

* **Activities**: Initiating activities by referencing activity definitions or order sets
* **Form Filling**: A specific user interacting with a specific form, as specified by a Questionnaire
* **Service Calls**: The system calling a specific service, as specified by a CapabilityStatement and an operation URI
* **Subprocess**: Initiating a sub-process by referencing another strategy

Within these strategies, recommendations for guideline-based care are attached via triggers at the appropriate point in the workflow. In other words, rather than having a strategy directly refer to a particular recommendation, the recommendation logic is attached to the event and triggered at the appropriate point. This event-driven approach allows implementations to separate workflow processing from guidance evaluation.

Content conforming to this implementation guide SHALL use the [cpg-strategydefinition](StructureDefinition-cpg-strategydefinition.html) profile to represent strategy definitions.

#### Pathways

This implementation guide uses the PlanDefinition resource to represent the overall activities involved in a guideline as a pathway. For the purposes of this implementation guide, a pathway differs from a strategy in that a pathway describes a general set of activities to be applied over time, typically with multiple time-based or event-based entry points across the pathway.

For example, the WHO antenatal care guideline recommends an overall contact schedule consisting of eight contacts at specific points during the pregnancy. This is represented using a pathway with actions for each of the contacts, where each action defines an applicability criteria that identifies the recommended timing of the encounter.

The activities in a pathway used in this way are references to other strategies or recommendations, rather than particular activities to be performed.

The choice between representation using recommendations, strategies, and pathways depends on a variety of factors, largely driven by:

1. Level of specificity, (i.e. the degree to which the guideline is explicit about specifying behaviors), ranging from specification of just recommendations and eligibility, up through and including longitudinal orchestration of care
2. Level of flexibility, (i.e. the degree to which the actions to be taken are explicitly specified (what vs how)

We use the term pathway in this methodology for a more flexible representation of the guidance, as opposed to a protocol which would typically be a more rigid description of a particular process.

Also note that depending on the guideline, there may be aspects of the pathway that are expected to be more rigid (i.e. closer to protocols), depending on the clinical specification.

Content conforming to this implementation guide SHALL use the [cpg-pathwaydefinition](StructureDefinition-cpg-pathwaydefinition.html) profile to represent pathway definitions.

### Validate Step {#validate-step}

The _validate_ step involves ensuring that the structured (L3) content produced matches the intent of the (L1) and (L2) content for the guideline. This implementation guide provides several approaches for validation, including conformance requirements, L2, L3, and L4 checklists, as well as supporting several layers of testing.

#### Conformance

<p>The <a href="documentation-conformance.html">Conformance</a> topic summarizes the conformance requirements established by this implementation guide.</p>

#### Checklists

To help facilitate the process of communication of requirements between collaborators, and to provide a measure of completeness with respect to artifacts used in and developed as part of this methodology, this implementation guide provides three checklists, associated with the semi-structured, structured, and executable knowledge representation levels. These checklists are intended as a tool to help identify requirements and ensure completeness of artifacts:

|Checklist|Description|
|--------------|----|
|[L2 Checklist](clinical-guidelines-development-L2-checklist.html)|Used to ensure that informaticists and knowledge engineers have what they need from L1 content in order to successfully produce L3 content|
|[L3 Checklist](clinical-guidelines-development-L3-checklist.html)|Used to ensure that L3 content meets the requirements to ensure that implementers have what they need in order to successfully implement computable content in a specific setting|
|[L4 Checklist](clinical-guidelines-development-L4-checklist.html)|Used by implementers to help support the process of implementing in a specific setting, helping to ensure successful and faithful implementation of guideline content|
{:.grid}

#### Expert Review

The agile methodology proposed by the [approach](approach.html) section emphasizes the importance of regular review of content as part of the computable content development process. However, it is often the case that guideline development and derivate asset development are done by separate and fairly isolated teams. When the original guideline developers cannot be used for expert review, it is critical to ensure review by a qualified domain expert familiar with the domain the guideline covers.

In addition, engagement from target implementation sites is key, and the best-case scenario is to have site engagement as part of the development process. Again, this is often not the case, so seeking implementation review from at least one, if not several target implementation sites can provide valuable feedback.

#### Testing Scenarios

To support validation, testing scenarios should be devised based on the personas, concepts, activities, and processes defined in the narrative (L1) and semi-structured (L2) content. Ideally, these scenarios would be built out as FHIR resources, using the [ExampleScenario](http://hl7.org/fhir/examplescenario.html) resource as a way to completely and formally describe each scenario.

#### Unit Testing

Ideally, each artifact should have at least one _positive_ and one _negative_ test case. In addition, edge cases and boundary conditions should be considered and where appropriate, additional test cases provided. The goal of unit testing is to ensure that each of the artifacts functions as expected in isolation.

As of the time of this writing, unit testing for Libraries can be accomplished using the Atom CQL plugin by creating test folders for each test case. See the [Adding Test Cases](https://github.com/cqframework/content-ig-walkthrough#adding-test-cases) topic in the Content IG Walkthrough for more information.

#### Component Testing

Component testing involves ensuring that the components of a system work as expected. Ideally, components are tested with as few dependencies as possible. For L3 decision support content conforming to this implementation guide, that content can be tested with freely available, open-source reference implementations. In particular, the CQF Ruler reference implementation is capable of evaluating L3 decision support content, and exposing that evaluation capability as a CDS Hooks service.

See the [Quick Start](http://build.fhir.org/ig/cqframework/opioid-cds-r4/quick-start.html) in the Opioid Prescribing Guideline for an example of how this type of testing can be done.

#### Integration Testing

Integration testing involves ensuring that systems work together as expected. For example, once the L3 content for a guideline is loaded in a CQF Ruler, it can be tested with the CDS Hooks Sandbox, an open source sandbox for testing CDS Hooks Services that simulates a clinical system acting as a CDS Hooks client.

See the [Validation with CQF Ruler and CDS Hooks](https://github.com/cqframework/content-ig-walkthrough#validation-with-cqf-ruler-and-cds-hooks) topic of the Content IG walkthrough for an example of how to perform this type of testing.

### Packaging

<p>The <a href="packaging.html">Packaging</a> topic describes how content, including test cases, are packaged for distribution.</p>

### Mapping and Other Formalisms

<p>The primary methodology discussed in this implementation guide uses FHIR resources to represent both patient information and the computable content of a guideline. There are other approaches, and the <a href="documentation-methodology.html">Mapping to BPM+</a> topic discusses how the FHIR representations can be bi-directionally mapped to and from BPM+ content.</p>
