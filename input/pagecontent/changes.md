{: toc}

{: #changes}

This page details changes made in each version of the Clinical Guidelines implementation guide.

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