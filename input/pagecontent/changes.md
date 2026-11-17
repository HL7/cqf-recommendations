{: toc}

{: #changes}

This page details changes made in each version of the Clinical Guidelines implementation guide.

### STU 3 Ballot (version 3.0.0-ballot)

The following changes have been applied since the STU2 release (version 2.0.0), organized by their impact on implementations. Within the narrative pages of this guide, new and modified content is highlighted, and the highlighting can be turned on or off using the change display toggle at the top of each page. Changes to profiles, extensions, and other conformance resources are not highlighted in their renderings; refer to the entries below.

#### Non-compatible Changes

These changes may require existing content or implementations to be updated:

* [FHIR-48669](https://jira.hl7.org/browse/FHIR-48669): Replaced the `cpg-itemImage` and `cpg-responseImage` extensions with the SDC `itemMedia` and `itemAnswerMedia` extensions in [CPGComputableQuestionnaire](StructureDefinition-cpg-computablequestionnaire.html), and removed the CPG extensions. Added a dependency on [Structured Data Capture](http://hl7.org/fhir/uv/sdc) 4.0.0, and referenced the SDC `$populate` and `$extract` operations from the [CPG Interactive Service](CapabilityStatement-cpg-interactive-service.html) and [CPG Interactive Client](CapabilityStatement-cpg-interactive-client.html) capabilities
* [FHIR-57512](https://jira.hl7.org/browse/FHIR-57512): Removed the unused `mergeNestedCarePlans` and `terminologyEndpoint` parameters from [PlanDefinition/$apply](OperationDefinition-cpg-plandefinition-apply.html), and the unused `terminologyEndpoint` parameter from [ActivityDefinition/$apply](OperationDefinition-cpg-activitydefinition-apply.html)

#### Compatible, Substantive Changes

These changes add new capabilities or relax existing requirements, without invalidating existing conformant content:

* [FHIR-59768](https://jira.hl7.org/browse/FHIR-59768): Established formal conformance statements throughout the guide, listed on the [Conformance](documentation-conformance.html#conformance-statements) page, with a new [CPG Conformance Category](CodeSystem-cpg-conformance-category-cs.html) code system. Defined the system [Actors](actors.html) (CPG Knowledge Repository, CPG Service, and CPG Client) and the service and client pairs for each level of enablement, with their ActorDefinitions and CapabilityStatements. Relaxed the requirements to use the CRMI profiles for knowledge artifacts, code systems, and value sets from SHALL to SHOULD, because this guide does not take a dependency on CRMI (see [Use of CRMI](documentation-conformance.html#use-of-crmi)), and clarified that the CQL library requirements apply only to content that uses CQL (see [Use of CQL](documentation-conformance.html#use-of-cql) and [Libraries](libraries.html))
* [FHIR-50165](https://jira.hl7.org/browse/FHIR-50165): Added support for interactive clinical decision support, described on the new [Interactive Clinical Decision Support](interactive-cds.html) page, with the new [PlanDefinition/$questionnaire](OperationDefinition-cpg-planDefinition-questionnaire.html) and [StructureDefinition/$questionnaire](OperationDefinition-cpg-structureDefinition-questionnaire.html) operations
* [FHIR-57699](https://jira.hl7.org/browse/FHIR-57699): Added coded results for compliance and adherence metrics, with the [CPG Metric Result](CodeSystem-cpg-metric-result-cs.html) code system and the [CPG Compliance Result](ValueSet-cpg-compliance-result-vs.html) and [CPG Adherence Result](ValueSet-cpg-adherence-result-vs.html) value sets, and added the compliance and adherence measure types in the [CPG Measure Type](ValueSet-cpg-measure-type-vs.html) value set, bound to [CPGComputableMetric](StructureDefinition-cpg-computablemetric.html). Documented in [Metrics](methodology-translate.html#metrics), and aligned the [Metrics](documentation-approach-12-07-cpg-derivative-and-related-assets.html#metric-types-and-results) approach and the [glossary](glossary.html). Adherence retains its STU2 scope of pathways and strategies; coded results for pathway adherence and for goals are planned for a future version
* [FHIR-50150](https://jira.hl7.org/browse/FHIR-50150): Added the `cqf-applicabilityBehavior` extension to the actions of [CPGComputablePlanDefinition](StructureDefinition-cpg-computableplandefinition.html), described its effect in [PlanDefinition/$apply](OperationDefinition-cpg-plandefinition-apply.html), and used it in the [process patterns](documentation-methodology.html) and examples. Added a dependency on the FHIR Extensions Pack 5.4.0. Revised the [PlanDefinition processing rules](documentation-approach-09-methods-of-implementation.html#plandefinition-processing-semantics) accordingly: the order of child actions is significant when the parent's applicability behavior is `any`, and the evaluation order and selection of alternatives are expressed with applicability and selection behavior, rather than by chaining related actions with the `before-start` relationship. Related actions can now use any relationship defined by the base specification to describe timing between activities, and a cycle among related actions is not necessarily an infinite loop, because applicability conditions are still evaluated. Content written to the STU2 rules remains valid, but engines that enforced the STU2 `before-start` rule should accept the other relationships
* [FHIR-48734](https://jira.hl7.org/browse/FHIR-48734): Allowed the `cqf-messages` extension on [CPGCarePlan](StructureDefinition-cpg-careplan.html), [CPGStrategy](StructureDefinition-cpg-strategy.html), and the recommendation proposal profiles, and described its use in [PlanDefinition/$apply](OperationDefinition-cpg-plandefinition-apply.html) and [ActivityDefinition/$apply](OperationDefinition-cpg-activitydefinition-apply.html)
* [FHIR-57515](https://jira.hl7.org/browse/FHIR-57515): Added the [cpg-applicabilityExpression](StructureDefinition-cpg-applicabilityExpression.html) and [cpg-targetExpression](StructureDefinition-cpg-targetExpression.html) extensions, and added them and `cqf-library` to [CPGComputableGraphDefinition](StructureDefinition-cpg-computablegraphdefinition.html)
* [FHIR-57516](https://jira.hl7.org/browse/FHIR-57516): Defined the [GraphDefinition/$apply](OperationDefinition-cpg-graphdefinition-apply.html) operation, and added it to the [CPG Summary Service](CapabilityStatement-cpg-summary-service.html) and [CPG Summary Client](CapabilityStatement-cpg-summary-client.html) capabilities
* [FHIR-51810](https://jira.hl7.org/browse/FHIR-51810): Added the [cpg-pertinenceRating](StructureDefinition-cpg-pertinenceRating.html) and [cpg-pertinentTo](StructureDefinition-cpg-pertinentTo.html) extensions, added the case feature extensions to the request profiles, and allowed the pertinence extensions on the request, event, case feature, [CPGCaseSummary](StructureDefinition-cpg-casesummary.html), and [CPGCasePlanSummary](StructureDefinition-cpg-caseplansummary.html) profiles, as described in [Activity Events](methodology-translate.html#activity-events)
* [FHIR-49942](https://jira.hl7.org/browse/FHIR-49942): Removed content constraints that the infrastructure does not depend on, such as required names, from the domain profiles, including [CPGPatient](StructureDefinition-cpg-patient.html), [CPGPractitioner](StructureDefinition-cpg-practitioner.html), [CPGOrganization](StructureDefinition-cpg-organization.html), and [CPGLocation](StructureDefinition-cpg-location.html)
* [FHIR-59818](https://jira.hl7.org/browse/FHIR-59818): Added the [cpg-preferenceBehavior](StructureDefinition-cpg-preferenceBehavior.html) extension, with the [CPG Preference Behavior](CodeSystem-cpg-preference-behavior-cs.html) code system and [value set](ValueSet-cpg-preference-behavior-vs.html), to convey how a guideline regards an option once it is surfaced (preferred, recommended, neutral, or not recommended). Added the extension to the actions of [CPGComputablePlanDefinition](StructureDefinition-cpg-computableplandefinition.html) and [CPGStrategy](StructureDefinition-cpg-strategy.html), described its propagation by [PlanDefinition/$apply](OperationDefinition-cpg-plandefinition-apply.html), and documented it in [Preference among Options](documentation-approach-12-03-cpg-plan.html#preference-among-options) and [Express preference among options](methodology-translate.html#preference-behavior), with conformance statements rec-8 through rec-12
* [FHIR-52833](https://jira.hl7.org/browse/FHIR-52833): Added guidance on [developing and maintaining terminology](terminology.html#developing-and-maintaining-terminology), including guideline-specific code systems and mappings, update cadence, and organizing value sets by code system
* Replaced the dependency on the R5 extensions package (`hl7.fhir.extensions.r5#4.0.1`) with the R5-for-R4 cross-version extensions package (`hl7.fhir.uv.xver-r5.r4#0.1.0`), which provides the `CommunicationRequest.intent` extension used by [CPGCommunicationRequest](StructureDefinition-cpg-communicationrequest.html). The extension URL is unchanged

#### Non-substantive Changes

These changes correct or clarify the guide without changing its requirements:

* [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639): Reorganized and editorially revised the [Approach](approach.html) section, including a new [Conceptual Knowledge Architecture Index](documentation-approach-12-08-conceptual-knowledge-architecture-index.html). The separate Guideline Development Group and Knowledge Representation pages were removed, and their content consolidated into the [Guideline Development](documentation-approach-04-guideline-development.html#guideline-development-group) and [Knowledge Representation](documentation-approach-02-04-knowledge-representation.html) section pages. The Approach pages now use concept names (for example, Care Plan and Case Summary) for the concepts of the architecture, and reserve "CPG"-prefixed names for the profiles that represent them. The opening page of each Approach section now presents the approach for that section, using the heart failure example, with links to the detailed pages: [Conceptual Knowledge Architecture](documentation-approach-12-conceptual-knowledge-architecture.html), [Knowledge Representation](documentation-approach-02-04-knowledge-representation.html), [Implementing Computable Knowledge](documentation-approach-02-05-knowledge-implementation.html), [Guideline Development](documentation-approach-04-guideline-development.html), and [Knowledge Engineering](documentation-approach-05-knowledge-engineering-overview.html) (including measurement and evidence)
* [FHIR-53488](https://jira.hl7.org/browse/FHIR-53488): Updated the [L1 Checklist](clinical-guidelines-development-L1-checklist.html) to the published version, and referenced the published article
* [FHIR-50999](https://jira.hl7.org/browse/FHIR-50999): Added the missing reference for Figure 1 on [Computable Guideline Artifacts](documentation-approach-04-05-computable-guideline-artifacts.html)
* [FHIR-59638](https://jira.hl7.org/browse/FHIR-59638): Updated the learning health system diagram on the [home page](index.html)
* [FHIR-51911](https://jira.hl7.org/browse/FHIR-51911): Fixed the formatting of the [activity profiles](profiles.html#activity-profiles) table
* [FHIR-49790](https://jira.hl7.org/browse/FHIR-49790): Corrected the Record Inference [activity examples](examples-activities.html)
* [FHIR-49033](https://jira.hl7.org/browse/FHIR-49033): Fixed a typo in the [CHF example](examples-chf.html) O2 saturation case feature goal
* [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639): Reorganized the [Methodology](methodology.html) into separate pages for each step ([Select](methodology-select.html), [Represent](methodology-represent.html), [Translate](methodology-translate.html), [Validate](methodology-validate.html), and [Package](methodology-package.html)), and expanded the guidance in the Methodology and [Approach](approach.html) pages, including worked examples from the [CHF example](examples-chf.html), evaluation and maintenance guidance, new diagrams, an [Activity Transitions](activityflow-transitions.html) reference, and a [CDS Literature and Bibliography](documentation-approach-cds-implementation-evidence.html). Links to the former Methodology section anchors are redirected to the corresponding step pages
* [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639): Consolidated the references cited throughout the guide into the [CDS Literature and Bibliography](documentation-approach-cds-implementation-evidence.html#additional-references), including the references previously listed on the [home page](index.html#references). Numbered reference lists on individual pages were removed, and citations now link to the corresponding bibliography entry
* [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639): Redrew figures in the Approach and Methodology: the learning health system ([6S Evidence Pyramid and Learning Health Systems](documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.html)), the [levels of representation](documentation-approach-06-01-levels-of-knowledge-representation.html), the [tiers of functionality](documentation-approach-07-tiers-of-functionality.html), the [levels by tiers](documentation-approach-08-levels-of-representation-by-tiers-of-functionality.html) matrix, the [methods of implementation](documentation-approach-09-methods-of-implementation.html), the [conceptual knowledge architecture](documentation-approach-12-conceptual-knowledge-architecture.html), the [Plan](documentation-approach-12-03-cpg-plan.html) definitions, and the [process pattern](documentation-methodology.html) overview. Added diagrams for [knowledge validation](documentation-approach-05-04-knowledge-execution-and-validation.html), [local governance](documentation-approach-05-05-knowledge-implementation.html), [derived case features](documentation-approach-12-04-cpg-case.html#derived-or-inferred-case-features), the [care plan](documentation-approach-12-05-cpg-careplan.html), [release maintenance](methodology-package.html#maintenance), and the [case study](methodology-case-study.html)
* [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639): Rewrote [Activity Flow](activityflow.html). A new [Purpose and Rationale](activityflow.html#purpose-and-rationale) section describes the phases, and explains that the Activity Flow runs in parallel to, not within, the order lifecycle of an EHR or other system of record, with hold, stop, and resume of an existing order as activities in their own right. The phase table now gives the intent and status of each phase. The STU2 capability pseudo-code and per-resource status tables are replaced by pattern-level guidance on the [Activity Transitions](activityflow-transitions.html) page and per-resource status considerations, with status values corrected against R4 (for example, QuestionnaireResponse has no `cancelled`, `on-hold`, or `failed` status). The prepare and commit separation from FHIR-48019 and the do-not-perform and not-done handling from FHIR-44984 are retained
* [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639): Technical corrections to align the narrative with the profiles, which are unchanged since STU2:
  * The [PlanDefinition processing rules](documentation-approach-09-methods-of-implementation.html#plandefinition-processing-semantics) now state that `relatedAction` is used only where the profile permits it (CPGPathwayDefinition prohibits it), and that recommendations and strategies have one triggering action, while pathways can have several (as the STU2 pathway guidance already stated). Engines that enforced a single trigger on pathways should accept several. The other rule changes follow from FHIR-50150, above
  * The descriptions of [recommendations, strategies, and pathways](documentation-approach-09-methods-of-implementation.html) now state the definitions each can reference, as constrained by [CPGRecommendationDefinition](StructureDefinition-cpg-recommendationdefinition.html) (activity definitions or order sets), [CPGStrategyDefinition](StructureDefinition-cpg-strategydefinition.html) (recommendation definitions), and [CPGPathwayDefinition](StructureDefinition-cpg-pathwaydefinition.html) (strategy or workflow definitions, with no `relatedAction`, `input`, or `output`)
  * A [Strategy](documentation-approach-12-03-cpg-plan.html#strategies) is now described as a PlanDefinition of type `workflow-definition` that groups related recommendations, rather than as a profiled event-condition-action rule, consistent with CPGStrategyDefinition
* Corrected the FHIR version declared by the [CPG Common Patient Registry](CapabilityStatement-cpg-common-patient-registry.html) capability statement and an example library, and updated the build for the latest IG Publisher

### STU2 Release (version 2.0.0)

The following changes were applied as a result of comments received during the STU2 ballot:

* [FHIR-48658](https://jira.hl7.org/browse/FHIR-48658): Removed CarePlan/$apply operation
* [FHIR-48634](https://jira.hl7.org/browse/FHIR-48634): Added support for ratings in recommendations
* [FHIR-48388](https://jira.hl7.org/browse/FHIR-48388): Expanded CPGRecommendationDefinition to reference a CPGOrderSet
* [FHIR-48019](https://jira.hl7.org/browse/FHIR-48019): Clarified pseudo-code for activity multi-step activity flows to use prepare/initiate language, rather than start/end language
* [FHIR-46314](https://jira.hl7.org/browse/FHIR-46314): Clarified guidance in PlanDefinition/$apply related to the use of `option`
* [FHIR-46097](https://jira.hl7.org/browse/FHIR-46097): Allowed cpg-rationale to be used on PlanDefinition.action (recursively)
* [FHIR-45999](https://jira.hl7.org/browse/FHIR-45999): Clarified behavior of requests within a RequestGroup and the option intent
* [FHIR-45460](https://jira.hl7.org/browse/FHIR-45460): Provided additional guidance on computability vs interoperability profiles
* [FHIR-44984](https://jira.hl7.org/browse/FHIR-44984): Reflected doNotPerform and notDone in the ActivityFlow
* [FHIR-44983](https://jira.hl7.org/browse/FHIR-44983): Defined intent for communicationrequest
* [FHIR-44913](https://jira.hl7.org/browse/FHIR-44913): Enhanced testing description in the methodology page
* [FHIR-44911](https://jira.hl7.org/browse/FHIR-44911): Improved definition and explanation of content implementation guides
* [FHIR-44240](https://jira.hl7.org/browse/FHIR-44240): Removed cpg-indicator value set, should be in a Using CDS Hooks IG
* [FHIR-44234](https://jira.hl7.org/browse/FHIR-44234): Removed cpg-indicator code system in favor of THO cdshooks-indicator
* [FHIR-44160](https://jira.hl7.org/browse/FHIR-44160): Reconciled overlaps with the EBMonFHIR IG
* [FHIR-44143](https://jira.hl7.org/browse/FHIR-44143): Minor grammar and formatting fixes throughout IG
* [FHIR-44067](https://jira.hl7.org/browse/FHIR-44067): Fixed activity profiles page numbering
* [FHIR-43990](https://jira.hl7.org/browse/FHIR-43990): Updated opioid examples to latest 
* [FHIR-43989](https://jira.hl7.org/browse/FHIR-43989): Documented state transition from status = draft to status = active
* [FHIR-43433](https://jira.hl7.org/browse/FHIR-43433): Minor correction typos in 3 Methodology, 3.4.1 Concepts
* [FHIR-43361](https://jira.hl7.org/browse/FHIR-43361): Added L1 checklist and surface checklists more prominently
* [FHIR-43149](https://jira.hl7.org/browse/FHIR-43149): Ensured extensions only apply in appropriate contexts
* [FHIR-41200](https://jira.hl7.org/browse/FHIR-41200): Added stop, hold, and resume activities
* [FHIR-40550](https://jira.hl7.org/browse/FHIR-40550): Added ActivityDefinition/$apply operation
* [FHIR-32962](https://jira.hl7.org/browse/FHIR-32962): Added the ability to specify the type of an empty input parameter
* [FHIR-32592](https://jira.hl7.org/browse/FHIR-32592): Added MustSupport guidance
* [FHIR-29679](https://jira.hl7.org/browse/FHIR-29679): Added a mergeNestedPlans parameter to PlanDefinition/$apply
* [FHIR-27151](https://jira.hl7.org/browse/FHIR-27151): Removed rating extensions from context-specific recommendations

### STU2 Ballot (version 2.0.0-ballot)

This ballot of the Clinical Guidelines implementation guides incorporates feedback that has been received during the trial-use 
implementation period. Feedback from production implementations of clinical reasoning capability as well as multiple content 
development projects covering various aspects of computable guideline content development and implementation has been included.

Major changes include:

* Removed Shareable/Publishable/Executable profiles and referenced the CRMI IG for those capabilities instead (see [Profiles](profiles.html))
* Removed the Using CQL and Libraries conformance requirements and referenced the Using CQL with FHIR IG for those capabilities instead (see [Libraries](libraries.html))
* Detailed descriptions of activity flow (see [Activity Flow](activityflow.html))
* Recommend an Immunization activity now uses MedicationRequest 
* Added L1 checklist from GIN-NA working group (see [L1 Checklist](clinical-guidelines-development-L1-checklist.html))
* Moved most example IGs to cqframework (see [Examples](examples.html))

The following sections detail the changes that were applied for this ballot.

* [FHIR-43074](https://jira.hl7.org/browse/FHIR-43074): Add more detailed description of activity flow
* [FHIR-42973](https://jira.hl7.org/browse/FHIR-42973): Refactor to use CRMI profiles
* [FHIR-40964](https://jira.hl7.org/browse/FHIR-40964): Unable to file issues against 1.0 version in HL7 JIRA
* [FHIR-40486](https://jira.hl7.org/browse/FHIR-40486): Add guidance on when available ELM can be used
* [FHIR-40298](https://jira.hl7.org/browse/FHIR-40298): Change Immunization action
* [FHIR-38743](https://jira.hl7.org/browse/FHIR-38743): Better definitions for each activity
* [FHIR-35796](https://jira.hl7.org/browse/FHIR-35796): Add a CPG Packaging Like the Measure Packaging Operation
* [FHIR-34350](https://jira.hl7.org/browse/FHIR-34350): ImmunizationRecommendation example does not point at meta.profile
* [FHIR-32676](https://jira.hl7.org/browse/FHIR-32676): Ability to specify supported CQL versions
* [FHIR-32672](https://jira.hl7.org/browse/FHIR-32672): Add support for specifying CQL options in CQL/ELM libraries and projects
* [FHIR-26607](https://jira.hl7.org/browse/FHIR-26607): Add description of types of artifacts
* [FHIR-25741](https://jira.hl7.org/browse/FHIR-25741): Add extensions to identify the packaging and testing tooling for an artifact

In addition, the implementation guide source was completely updated to run on the latest IG publication tooling, which included numerous typographical and technical corrections throughout.

### STU1 Publication (version 1.0.0)

* [FHIR-30007](https://jira.hl7.org/browse/FHIR-30007): Support for images in questionnaire questions and answers
* [FHIR-27154](https://jira.hl7.org/browse/FHIR-27154): Formalized $cql and Library/$evaluate operations
* [FHIR-27151](https://jira.hl7.org/browse/FHIR-27151): Removed rating extensions from instance profiles
* [FHIR-26885](https://jira.hl7.org/browse/FHIR-26885): Formalized conformance requirements for input and output of CQL libraries
* [FHIR-26875](https://jira.hl7.org/browse/FHIR-26875): Relaxed url requirement in related artifacts
* [FHIR-26621](https://jira.hl7.org/browse/FHIR-26621): Clarified conformance requirements for Library resolution and naming/namespacing
* [FHIR-26612](https://jira.hl7.org/browse/FHIR-26612): Defined shareable, computable, publishable, and executable knowledge capabilities and profiles
* [FHIR-24236](https://jira.hl7.org/browse/FHIR-24236): Added a complete example for Congestive Heart Failure pathway
* [FHIR-24227](https://jira.hl7.org/browse/FHIR-24227): Updated narratives for examples throughout
* [FHIR-24223](https://jira.hl7.org/browse/FHIR-24223): Added history of attempts to background section
* [FHIR-24221](https://jira.hl7.org/browse/FHIR-24221): Formalized activity processing semantics
* [FHIR-24217](https://jira.hl7.org/browse/FHIR-24217): Formalized triggering behavior
* [FHIR-24177](https://jira.hl7.org/browse/FHIR-24177): Improved activity catalog
* [FHIR-24165](https://jira.hl7.org/browse/FHIR-24165): Added Development/methodology documentation and walkthroughs
* [FHIR-24163](https://jira.hl7.org/browse/FHIR-24163): Added testing and packaging support and documentation
* [FHIR-24161](https://jira.hl7.org/browse/FHIR-24161): Clarified rating systems conformance requirements
* [FHIR-24156](https://jira.hl7.org/browse/FHIR-24156): Updated topic binding to preferred for all artifact types
* [FHIR-24150](https://jira.hl7.org/browse/FHIR-24150): Separated examples vs artifacts and provided index for both
* [FHIR-24087](https://jira.hl7.org/browse/FHIR-24087): Moved recommendation-specific extensions to recommendation definition
* [FHIR-23991](https://jira.hl7.org/browse/FHIR-23991): Added a glossary of key terms
* [FHIR-23968](https://jira.hl7.org/browse/FHIR-23968): Formalized request proposal/plan/order behavior
* [FHIR-23964](https://jira.hl7.org/browse/FHIR-23964): Formalized eligibility and enrollment behavior
* [FHIR-23963](https://jira.hl7.org/browse/FHIR-23963): Added case plan summary support
* [FHIR-23960](https://jira.hl7.org/browse/FHIR-23960): Formalized care plan behavior
* [FHIR-23959](https://jira.hl7.org/browse/FHIR-23959): Added support for clinical impressions
* [FHIR-23958](https://jira.hl7.org/browse/FHIR-23958): Added case plan progressing note support
* [FHIR-23957](https://jira.hl7.org/browse/FHIR-23957): Added case summary support
* [FHIR-23956](https://jira.hl7.org/browse/FHIR-23956): Formalized metric behavior
* [FHIR-23954](https://jira.hl7.org/browse/FHIR-23954): Added support for case features
* [FHIR-23952](https://jira.hl7.org/browse/FHIR-23952): Formalized case behavior
* [FHIR-23951](https://jira.hl7.org/browse/FHIR-23951): Formalized strategy behavior
* [FHIR-23949](https://jira.hl7.org/browse/FHIR-23949): Completed examples for all activity types
* [FHIR-23948](https://jira.hl7.org/browse/FHIR-23948): Reorganized overall guide content and navigation
* [FHIR-23945](https://jira.hl7.org/browse/FHIR-23945): Changed protocol and workflow to pathway and strategy definitions
* [FHIR-23940](https://jira.hl7.org/browse/FHIR-23940): Added patient safety discussion to conformance page

In addition, numerous corrections and clarifications were made throughout, as well as substantial expansion of approach and methodology documentation. Refer to the HL7 JIRA for a complete description of changes applied to the 1.0.0 version.

### STU1 Ballot (version 0.1.0)

The initial ballot combines experience gained from multiple guideline representation projects, including Opioid Prescribing Support, Chronic Kidney Disease Management, Antenatal Care, HIV/HBV Screening, Prevention, and Treatment, and Immunization Decision Support.