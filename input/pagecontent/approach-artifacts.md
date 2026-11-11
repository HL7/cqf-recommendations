Choose artifacts based on what the guideline needs to communicate, calculate, or deliver. A clinical recommendation may need a reviewed interpretation, a data contract, reusable logic, and a proposed activity. An interactive implementation may also need a form. Each artifact has a purpose, an identity, and dependencies that should travel with it.

### Representation levels {#representation-levels}

The four levels describe how guideline knowledge is represented and where it is used. They follow the multilayer approach of [Boxwala et al.](https://doi.org/10.1136/amiajnl-2011-000334). Teams can revise several levels together as clinical and technical review reveals ambiguities.

{% include cpg-diagram.html src="cpg-model-levels.svg" alt="Four ordered rows distinguish L1 narrative, L2 semi-structured, L3 computable, and L4 local executable representations. Overlapping bars show concurrent work and review across levels." %}

**L1, narrative**, communicates the clinical intent to people. Capture the source and date, population, recommended care, exclusions, timing, setting, supporting evidence, and recommendation strength. Tables and figures can communicate this information alongside prose. Preserve qualifying language and uncertainty as the team interprets the recommendation.

**L2, semi-structured**, records the interpretation in a form clinicians and implementers can review together. A data dictionary, decision table, process diagram, or worked example can make explicit which measurement is current, when an exclusion applies, and what a rule proposes. Record unresolved choices and who is responsible for resolving them.

**L3, computable**, expresses the reviewed interpretation as shareable artifacts. Profiles, terminology, logic libraries, activity and plan definitions, and questionnaires specify data, decision, and interaction contracts independently of a particular EHR interface. Check conformance and compare evaluated results with clinically reviewed cases.

**L4, local executable implementation**, puts those contracts to work in a setting. It includes the engine or translation, validated data mappings, invocation points, permissions, presentation, and operational controls. Review whether the implementation preserves the clinical intent when the local data, timing, or available actions differ from those assumed by the source.

These levels describe representations, not conformance grades. [Artifact capability profiles](profiles.html#artifact-profiles), such as Shareable or Executable, specify expectations for individual artifacts. [Conformance](documentation-conformance.html) explains requirements for implementation.

### Data, clinical logic, and forms {#data-logic-forms}

Data, logic, and forms are three responsibilities that may appear at any level. They complement the [Case, Plan, and Workflow model](approach-model.html), which distinguishes patient state, recommended care, and care delivery.

**Data** defines the clinical information the guideline needs: meaning, codes, units, time, and allowable values. Mapping a local code to an agreed representation should preserve meaning. Inferring a score or a clinical state adds logic. If the source and target codes differ in meaning, document the limitation and have it reviewed before using the mapping to drive decisions.

**Clinical logic** describes patient state, evaluates applicability, and determines what care to propose. In the [CHF example](examples-chf.html), the [CHF Library](Library-CHF.html) supplies logic for body weight change, a named feature that can be reused across the guideline. Keep the calculation and the [recommendation](PlanDefinition-chf-bodyweight-change-pd.html) that specifies the activities distinct so the feature has the same meaning when reused.

**Forms** describe what users need to enter, confirm, or review. Questionnaire can specify the items, and expressions can populate or branch the form. A rule that controls whether a question appears belongs to the interaction; the calculation of a patient feature belongs in reusable logic. [Interactive CDS](interactive-cds.html) describes how generation, population, extraction, and re-evaluation fit together.

### Work products by level and responsibility {#artifacts-by-level}

Use this matrix to plan the work for a capability. For a measured case feature, settle the units, source, and time window with clinical reviewers; represent the contract in shareable definitions; then verify that local data actually satisfy it. A service that consumes existing records may need no form.

{% include cpg-diagram.html src="cpg-model-artifact-matrix.svg" alt="Work products across four representation levels, with rows for Data, Clinical logic, and Forms. The complete cell contents are also available in the text version below." %}

<details>
  <summary>Read the matrix as text</summary>
  <p><strong>Data</strong></p>
  <ul>
    <li><strong>L1: Narrative.</strong> Clinical concepts and relevant patient information.</li>
    <li><strong>L2: Semi-structured.</strong> Data dictionary, terminology choices, time and source rules.</li>
    <li><strong>L3: Computable.</strong> Profiles, CodeSystems, ValueSets, and data requirements.</li>
    <li><strong>L4: Local implementation.</strong> Validated local mappings and data access.</li>
  </ul>
  <p><strong>Clinical logic</strong></p>
  <ul>
    <li><strong>L1: Narrative.</strong> Recommendation and clinical conditions.</li>
    <li><strong>L2: Semi-structured.</strong> Decision tables, process models, and reviewed cases.</li>
    <li><strong>L3: Computable.</strong> Libraries, activity and plan definitions, and measures where needed.</li>
    <li><strong>L4: Local implementation.</strong> Evaluated results from the configured engine or translated logic.</li>
  </ul>
  <p><strong>Forms</strong></p>
  <ul>
    <li><strong>L1: Narrative.</strong> Information to provide or review.</li>
    <li><strong>L2: Semi-structured.</strong> User stories, interaction sketches, and branching rules.</li>
    <li><strong>L3: Computable.</strong> Questionnaire and supported population and extraction expressions.</li>
    <li><strong>L4: Local implementation.</strong> Rendered interactions, permissions, and routing.</li>
  </ul>
</details>

This planning matrix follows the levels-by-tiers distinction previously illustrated in this guide by B. Rhodes, Database Consulting Group (2019). Use the [L1–L4 checklists](checklists.html) to review the artifacts in scope.

### Design the knowledge architecture {#knowledge-architecture}

Identify the clinical concepts, their relationships, and the boundaries between patient description, recommended care, and local delivery. For each boundary, agree on the information that crosses it and how its meaning and provenance are preserved. Then choose the representations that fit those responsibilities. In the CHF example, a case feature defines weight change, a library calculates it, and a recommendation specifies what to do with the result. The same feature and calculation can serve a summary or metric while each consumer defines its own decision or measurement criteria. [Case, Plan, and Workflow](approach-model.html#boundary-cases)

Use common profiles, terminology, and interfaces where they express the clinical meaning. Define the constraints that keep related artifacts interoperable, including allowed references, expected data, and how to resolve dependencies. Give reusable clinical logic a versioned source so each recommendation, form, or implementation can reference the same expression where its meaning fits. [FHIR R4 Clinical Reasoning](https://hl7.org/fhir/R4/clinicalreasoning-knowledge-artifact-representation.html)

### FHIR resource map {#resource-map}

FHIR resources carry the artifacts and the relationships among them. A StructureDefinition establishes the constraints for a profile; a conforming resource carries particular content. For example, the CHF pathway is a PlanDefinition instance conforming to CPGPathwayDefinition. A patient's enrollment in that pathway is a separate EpisodeOfCare.

| What to represent | FHIR resource and CPG profile or guidance |
|---|---|
| Data definition and terminology | StructureDefinition / [CPGCaseFeatureDefinition](StructureDefinition-cpg-casefeaturedefinition.html); CodeSystem, ValueSet, and [terminology mappings](terminology.html) where appropriate |
| Logic and its dependencies | [Library](libraries.html) organizes expressions, model use, parameters, and dependencies |
| Template for a proposed activity | ActivityDefinition / [CPGComputableActivityDefinition](StructureDefinition-cpg-computableactivity.html) |
| Applicable care and its organization | PlanDefinition / [recommendation](StructureDefinition-cpg-recommendationdefinition.html), [strategy](StructureDefinition-cpg-strategydefinition.html), [pathway](StructureDefinition-cpg-pathwaydefinition.html), and [workflow](StructureDefinition-cpg-workflowdefinition.html) definitions |
| Information collection | Questionnaire / [CPGComputableQuestionnaire](StructureDefinition-cpg-computablequestionnaire.html), with supported expressions as needed |
| Enrollment, care planning, and options for a patient | EpisodeOfCare / [CPGCase](StructureDefinition-cpg-case.html); CarePlan / [CPGCarePlan](StructureDefinition-cpg-careplan.html); RequestGroup / [CPGStrategy](StructureDefinition-cpg-strategy.html) |
| Patient facts, intentions, and occurrences | Relevant clinical resources and [request and event profiles](activityflow.html) |
| Patient summary | GraphDefinition / [CPGCaseSummaryDefinition](StructureDefinition-cpg-casesummarydefinition.html); Composition / [CPGCaseSummary](StructureDefinition-cpg-casesummary.html) |
| Patient metric and result | Measure / [CPGComputableMetric](StructureDefinition-cpg-computablemetric.html); MeasureReport / [CPGMetricReport](StructureDefinition-cpg-metricreport.html) |
| Guideline package | ImplementationGuide / [CPGComputableGuideline](StructureDefinition-cpg-computableguideline.html) identifies the content and package dependencies |
{:.grid}

Check the exact profile for cardinalities, terminology bindings, extensions, and reference targets. For example, a pathway's action can target a strategy or workflow definition; the strategy's action target is a recommendation definition. These constraints apply even where base PlanDefinition allows more choices. “CPGPlan” and “CPGProposal” are conceptual labels; use the applicable definitions and patient request profiles when authoring resources. See [Implementation and Integration](approach-implementation.html) for the CPG apply contract that connects definitions to patient-specific results.

### Artifact identity and provenance {#artifact-identity}

Where supported, use the canonical `url`, business `version`, and artifact type to identify the knowledge artifact. A resource's `id`, server location, and `meta.versionId` identify a server record and its revision history. Track the identity of the guideline package separately from the versions of artifacts it contains or references.

Record who maintains the artifact, its intended use, topic, lifecycle status, evidence and derivation, and applicable rights. Use supported metadata fields consistently across artifact types so a consumer can find related content and distinguish artifacts it depends on from those it was derived from. Publication status supports review and discovery. Local enablement and authorization are separate decisions. For a patient result, retain the relevant source inputs, effective time, and expression or artifact version so that reviewers can explain how it was produced.

### Expressions and declarations {#expressions-and-declarations}

An expression computes a value or a condition. CQL expressions can calculate a feature or determine whether a recommendation applies. A declaration states an activity or relationship: for example, a PlanDefinition relates actions, and an ActivityDefinition specifies the activity to construct. An expression can supply patient-dependent values while the definition establishes how the values are used.

Make the expression's inputs, model, and dependencies explicit. [Libraries](libraries.html) describes the supported representations. External functions or other languages require support from the target runtime. Test that support where the artifact will run, and compare clinically reviewed cases and missing-data behavior when translating between representations.

### Composition and dependencies {#dependencies}

Build larger artifacts using allowed references. A recommendation can use a Library and an activity definition; a strategy can group recommendations; a package can identify the definitions, terminology, logic, examples, and documentation it assembles. That assembly has a different purpose from the FHIR Composition resource used for clinical summaries. If implementing a subset, identify the capabilities in scope and resolve all dependencies needed to support them.

Record the exact versions used in a release, including shared libraries, profiles, terminology, and dependencies on other packages. When a dependency changes, trace which recommendations and local implementations use it. [Wright et al.](https://doi.org/10.1093/jamia/ocx106) describe CDS malfunctions involving dependency and terminology changes; their cases illustrate why changes need impact review. [Development and Maintenance](approach-development.html) covers review, release, and stewardship.

#### Manage content in a repository {#knowledge-content-management}

A repository can register definitions, content, and their metadata, support canonical lookup and topic discovery, and resolve dependencies for versioned releases. Track derivation and use relationships so a change to a shared profile, value set, or expression reveals the artifacts and implementations that need review. Record registration, publication, and local enablement separately so that availability for discovery does not activate clinical behavior.

### Derived artifacts {#derived-artifacts}

A derived artifact reuses content for another purpose. The [CHF Body Weight Change metric](Measure-chf-bodyweight-change-measure.html) uses an expression from the CHF Library to define a patient indicator. A case plan summary brings together selected patient information and intended care; a population measure defines a population and evaluates performance or outcomes. Reuse data and logic where their meaning fits, and record what changes for the new output: its scope, time window, treatment of missing data, and how the result should be interpreted. [Measurement and Evidence](approach-evaluation.html) explains how to review each output for its intended use.

{% include chapter-navigation.html section="Approach" unit="chapter" overview="approach.html" previous="approach-model.html" previous_title="Case, Plan, and Workflow" next="approach-implementation.html" next_title="Implementation and Integration" %}
