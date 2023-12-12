{: toc}

{: #changes}

This page details changes made in each version of the Clinical Guidelines implementation guide.

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

* **Applied**: Add extensions to identify the packaging and testing tooling for an artifact([FHIR-25741](https://jira.hl7.org/browse/FHIR-25741))
* **Applied**: Better definitions for each activity([FHIR-38743](https://jira.hl7.org/browse/FHIR-38743))
* **Applied**: Add support for specifying CQL options in CQL/ELM libraries and projects([FHIR-32672](https://jira.hl7.org/browse/FHIR-32672))
* **Applied**: Add a CPG Packaging Like the Measure Packaging Operation([FHIR-35796](https://jira.hl7.org/browse/FHIR-35796))
* **Applied**: Ability to specify supported CQL versions([FHIR-32676](https://jira.hl7.org/browse/FHIR-32676))
* **Applied**: Add guidance on when available ELM can be used([FHIR-40486](https://jira.hl7.org/browse/FHIR-40486))
* **Applied**: Add description of types of artifacts([FHIR-26607](https://jira.hl7.org/browse/FHIR-26607))
* **Applied**: Unable to file issues against 1.0 version in HL7 JIRA([FHIR-40964](https://jira.hl7.org/browse/FHIR-40964))
* **Applied**: Add more detailed description of activity flow([FHIR-43074](https://jira.hl7.org/browse/FHIR-43074))
* **Applied**: ImmunizationRecommendation example does not point at meta.profile([FHIR-34350](https://jira.hl7.org/browse/FHIR-34350))
* **Applied**: Change Immunization action([FHIR-40298](https://jira.hl7.org/browse/FHIR-40298))
* **Applied**: Refactor to use CRMI profiles([FHIR-42973](https://jira.hl7.org/browse/FHIR-42973))

In addition, the implementation guide source was completely updated to run on the latest IG publication tooling, which included numerous typographical and technical corrections throughout.

### STU1 Publication (version 1.0.0)

[J#23945](https://jira.hl7.org/browse/FHIR-): Changed protocol and workflow to pathway and strategy definitions
[J#24177](https://jira.hl7.org/browse/FHIR-): Improved activity catalog
[J#24087](https://jira.hl7.org/browse/FHIR-): Moved recommendation-specific extensions to recommendation definition
[J#26612](https://jira.hl7.org/browse/FHIR-): Defined shareable, computable, publishable, and executable knowledge capabilities and profiles
[J#23954](https://jira.hl7.org/browse/FHIR-): Added support for case features
[J#27154](https://jira.hl7.org/browse/FHIR-): Formalized $cql and Library/$evaluate operations
[J#27151](https://jira.hl7.org/browse/FHIR-): Removed rating extensions from instance profiles
[J#23951](https://jira.hl7.org/browse/FHIR-): Formalized strategy behavior
[J#23952](https://jira.hl7.org/browse/FHIR-): Formalized case behavior
[J#23960](https://jira.hl7.org/browse/FHIR-): Formalized care plan behavior
[J#26875](https://jira.hl7.org/browse/FHIR-): Relaxed url requirement in related artifacts
[J#23968](https://jira.hl7.org/browse/FHIR-): Formalized request proposal/plan/order behavior
[J#23964](https://jira.hl7.org/browse/FHIR-): Formalized eligibility and enrollment behavior
[J#24163](https://jira.hl7.org/browse/FHIR-): Added testing and packaging support and documentation
[J#24161](https://jira.hl7.org/browse/FHIR-): Clarified rating systems conformance requirements
[J#23956](https://jira.hl7.org/browse/FHIR-): Formalized metric behavior
[J#23959](https://jira.hl7.org/browse/FHIR-): Added support for clinical impressions
[J#23957](https://jira.hl7.org/browse/FHIR-): Added case summary support
[J#23963](https://jira.hl7.org/browse/FHIR-): Added case plan summary support
[J#23958](https://jira.hl7.org/browse/FHIR-): Added case plan progressing note support
[J#23949](https://jira.hl7.org/browse/FHIR-): Completed examples for all activity types
[J#24221](https://jira.hl7.org/browse/FHIR-): Formalized activity processing semantics
[J#24217](https://jira.hl7.org/browse/FHIR-): Formalized triggering behavior
[J#23940](https://jira.hl7.org/browse/FHIR-): Added patient safety discussion to conformance page
[J#24165](https://jira.hl7.org/browse/FHIR-): Added Development/methodology documentation and walkthroughs
[J#24236](https://jira.hl7.org/browse/FHIR-): Added a complete example for Congestive Heart Failure pathway
[J#24227](https://jira.hl7.org/browse/FHIR-): Updated narratives for examples throughout
[J#24156](https://jira.hl7.org/browse/FHIR-): Updated topic binding to preferred for all artifact types
[J#30007](https://jira.hl7.org/browse/FHIR-): Support for images in questionnaire questions and answers
[J#26885](https://jira.hl7.org/browse/FHIR-): Formalized conformance requirements for input and output of CQL libraries
[J#26621](https://jira.hl7.org/browse/FHIR-): Clarified conformance requirements for Library resolution and naming/namespacing
[J#24150](https://jira.hl7.org/browse/FHIR-): Separated examples vs artifacts and provided index for both
[J#23991](https://jira.hl7.org/browse/FHIR-): Added a glossary of key terms
[J#24223](https://jira.hl7.org/browse/FHIR-): Added history of attempts to background section
[J#23948](https://jira.hl7.org/browse/FHIR-): Reorganized overall guide content and navigation

In addition, numerous corrections and clarifications were made throughout, as well as substantial expansion of approach and methodology documentation. Refer to the HL7 JIRA for a complete description of changes applied to the 1.0.0 version.

### STU1 Ballot (version 0.1.0)

The initial ballot combines experience gained from multiple guideline representation projects, including Opioid Prescribing Support, Chronic Kidney Disease Management, Antenatal Care, HIV/HBV Screening, Prevention, and Treatment, and Immunization Decision Support.