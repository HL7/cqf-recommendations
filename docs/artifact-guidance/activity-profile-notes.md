# Activity-profile guidance coverage

Added or replaced Publisher intro and ending-usage fragments for exactly **43 activity profiles**, producing 86 files named from the exact FSH Id. Only these narrative fragments and this ledger were edited. Profiles, examples, resources, operation definitions, templates and configuration remain unchanged.

## Authoring evidence and scope

Read every activity-profile FSH declaration and the shared CPGTask and CPGComputableActivityDefinition parents. Read relevant enrollment/collection/reporting extensions and clinical target profiles. Used the last verified Publisher output referenced by `/tmp/cpg-artifact-guidance-baseline-path` to inspect inherited snapshots, fixed values, patterns, cardinalities and reference targets. The rewritten Activity Flow and Interactive CDS pages supply the workflow context.

Each intro explains the artifact’s purpose and role. Each ending section has a unique `<exact id>-usage` anchor, artifact-specific fields/relationships and related narrative/profile links. Pattern constraints on optional `code` are described without making code required. Task profiles do not inherit ActivityDefinition’s fixed proposal intent. Must-support is not rewritten as minimum cardinality.

## Coverage

| Exact profile Id | FSH parent | Intro words | Combined words |
|---|---|---:|---:|
| `cpg-administermedicationactivity` | `CPGComputableActivityDefinition` | 47 | 128 |
| `cpg-administermedicationtask` | `CPGTask` | 43 | 118 |
| `cpg-collectinformationactivity` | `CPGComputableActivityDefinition` | 49 | 128 |
| `cpg-communication` | `Communication` | 47 | 112 |
| `cpg-communicationactivity` | `CPGComputableActivityDefinition` | 51 | 127 |
| `cpg-communicationrequest` | `CommunicationRequest` | 49 | 128 |
| `cpg-dispensemedicationactivity` | `CPGComputableActivityDefinition` | 47 | 122 |
| `cpg-dispensemedicationtask` | `CPGTask` | 48 | 121 |
| `cpg-documentmedicationactivity` | `CPGComputableActivityDefinition` | 47 | 123 |
| `cpg-documentmedicationtask` | `CPGTask` | 49 | 106 |
| `cpg-enrollmentactivity` | `CPGComputableActivityDefinition` | 54 | 136 |
| `cpg-enrollmenttask` | `CPGTask` | 47 | 115 |
| `cpg-generatereportactivity` | `CPGComputableActivityDefinition` | 51 | 133 |
| `cpg-generatereporttask` | `CPGTask` | 48 | 138 |
| `cpg-holdactivity` | `CPGComputableActivityDefinition` | 50 | 133 |
| `cpg-holdtask` | `CPGTask` | 45 | 133 |
| `cpg-immunization` | `Immunization` | 49 | 116 |
| `cpg-immunizationactivity` | `CPGComputableActivityDefinition` | 47 | 127 |
| `cpg-immunizationrequest` | `MedicationRequest` | 42 | 115 |
| `cpg-medicationadministration` | `MedicationAdministration` | 50 | 121 |
| `cpg-medicationdispense` | `MedicationDispense` | 48 | 123 |
| `cpg-medicationrequest` | `MedicationRequest` | 49 | 121 |
| `cpg-medicationrequestactivity` | `CPGComputableActivityDefinition` | 47 | 129 |
| `cpg-medicationstatement` | `MedicationStatement` | 50 | 125 |
| `cpg-observation` | `Observation` | 50 | 128 |
| `cpg-procedure` | `Procedure` | 51 | 111 |
| `cpg-proposediagnosisactivity` | `CPGComputableActivityDefinition` | 49 | 134 |
| `cpg-proposediagnosistask` | `CPGTask` | 48 | 126 |
| `cpg-questionnaireresponse` | `QuestionnaireResponse` | 47 | 130 |
| `cpg-questionnairetask` | `CPGTask` | 46 | 114 |
| `cpg-recorddetectedissueactivity` | `CPGComputableActivityDefinition` | 49 | 131 |
| `cpg-recorddetectedissuetask` | `CPGTask` | 48 | 110 |
| `cpg-recordinferenceactivity` | `CPGComputableActivityDefinition` | 50 | 133 |
| `cpg-recordinferencetask` | `CPGTask` | 49 | 120 |
| `cpg-reportflagactivity` | `CPGComputableActivityDefinition` | 49 | 126 |
| `cpg-reportflagtask` | `CPGTask` | 48 | 128 |
| `cpg-resumeactivity` | `CPGComputableActivityDefinition` | 50 | 135 |
| `cpg-resumetask` | `CPGTask` | 43 | 133 |
| `cpg-servicerequest` | `ServiceRequest` | 51 | 128 |
| `cpg-servicerequestactivity` | `CPGComputableActivityDefinition` | 51 | 133 |
| `cpg-stopactivity` | `CPGComputableActivityDefinition` | 50 | 135 |
| `cpg-stoptask` | `CPGTask` | 43 | 132 |
| `cpg-task` | `Task` | 50 | 137 |

## Computable-contract discrepancies retained for review

- **Administration input copy text:** CPGAdministerMedicationTask input short/definition text says “to dispense,” while the activity code and targets support administration. Guidance follows the actual administer code, independently optional MedicationRequest/MedicationDispense inputs and MedicationAdministration output.
- **Documentation input copy text:** CPGDocumentMedicationTask input prose says dispensing; the actual document-medication code and MedicationStatement output are described.
- **Enrollment output copy text:** CPGEnrollmentTask output `case` says QuestionnaireResponse in its definition, but the constrained value is Reference(CPGCase). Guidance names CPGCase and does not invent a QuestionnaireResponse output.
- **Activity target copy text:** several propose-diagnosis/record-issue/record-inference/report-flag activity descriptions refer to a resulting communication request. Their fixed `kind=Task` and target-profile canonicals are described instead.
- **Event source copy text:** CPGProcedure and CPGMedicationAdministration source-definition prose mentions communication. Guidance follows the actual Procedure/MedicationAdministration fields, including MedicationAdministration.instantiates rather than instantiatesCanonical.
- **Control focus versus lifecycle:** hold/resume/stop Tasks permit a broad enumerated target set, including resource types without a corresponding on-hold or resumable state. The notes preserve that target contract and explicitly avoid promising a transition unsupported by the focused resource.
- **Optional code patterns:** specialized Task/activity code constraints are patterns on elements whose minimum remains zero. Notes describe what the pattern means when present without adding a code-presence obligation.
- **Immunization representation:** CPGImmunizationRequest is a MedicationRequest profile; its required immunization category slice (whose coding remains optional) and the separate Immunization event/extension link are described precisely.
- **Diagnosis target:** CPGProposeDiagnosisTask input targets base Condition, not exclusively CPGCondition; notes retain the actual wider target.

## Verification

- Coverage asserted against all 43 activity-profile FSH Ids; exactly 86 owned intro/notes paths written.
- All 86 fragments rendered through installed Kramdown. Every ending section has 2–4 bullets, a rendered unique usage anchor and related links. The existing template supplies the Notes heading; the fragment adds no duplicate heading. Narrative fragment links resolve against current pages.
- Guidance is explanatory and adds no uppercase conformance verbs or new fixed values/defaults. The enrollment absent-value behavior is explicitly documented in the existing FSH.
- Profile/resource links and significant claims were checked against the source and inherited snapshots. Full Publisher rendering/inclusion is an integration check performed by the coordinating agent.

## Final layout review

The template supplies the Notes heading. Each fragment now begins with an empty block carrying its unique usage anchor; the redundant custom heading was removed after browser review. No explanatory text changed during this layout adjustment. Word counts above are source whitespace counts, including links and markup.
