# Model and artifact profile guidance ledger

Completed 2026-10-28. Scope: exactly 39 locally declared profiles: seven in `input/fsh/profiles/artifact-profiles` and 32 in `input/fsh/profiles/domain-profiles`. Each has an artifact-specific introduction and ending usage note. No extension, activity-profile, CHF example-profile, imported dependency-profile, or obsolete/orphan intro was edited.

## Sources and authoring contract

- Read every owned FSH declaration, its applicable local parent FSH, the StructureDefinitionMetadata ruleset, and pertinent linking/expression extension definitions.
- Checked inherited constraints and target types in the resolved StructureDefinition snapshots from the previous successful Publisher build identified by `/tmp/cpg-artifact-guidance-baseline-path`. The published formal table and computable constraints remain authoritative; the notes explain them without replacing them.
- Used the Publisher convention `input/intro-notes/StructureDefinition-{exact-id}-intro.md` and `StructureDefinition-{exact-id}-notes.md`, verified against [IG template guidance](https://build.fhir.org/ig/FHIR/ig-guidance/using-templates.html).
- Each notes file begins with `### Using this profile {#<exact-id>-usage}`, has two to four artifact-specific bullets, and ends with related narrative/profile links. Intros are 42–54 words; combined text is below 200 words for every profile.
- Optional must-support elements remain optional. Notes do not introduce new normative verbs, default behavior, dependency versions, or narrower reference targets. Definition, instance, enrollment, request, and event roles remain distinct.
- Replaced the former category-only intros. Three former external-example lists were replaced with relevant local profile/narrative links; no claim is made about the current validity or behavior of those external examples.

## Exact coverage

| Profile ID | Declaration | Parent | Intro words | Combined words | Reviewed FSH |
| --- | --- | --- | ---: | ---: | --- |
| `cpg-casefeaturedefinition` | CPGCaseFeatureDefinition | StructureDefinition | 51 | 123 | `input/fsh/profiles/artifact-profiles/cpg-casefeature.fsh` |
| `cpg-computableactivity` | CPGComputableActivityDefinition | ActivityDefinition | 50 | 122 | `input/fsh/profiles/artifact-profiles/cpg-computable-activity.fsh` |
| `cpg-computablegraphdefinition` | CPGComputableGraphDefinition | GraphDefinition | 50 | 109 | `input/fsh/profiles/artifact-profiles/cpg-computable-graphdefinition.fsh` |
| `cpg-computableguideline` | CPGComputableGuideline | ImplementationGuide | 51 | 107 | `input/fsh/profiles/artifact-profiles/cpg-computable-guideline.fsh` |
| `cpg-computablemetric` | CPGComputableMetric | Measure | 51 | 130 | `input/fsh/profiles/artifact-profiles/cpg-computable-metric.fsh` |
| `cpg-computableplandefinition` | CPGComputablePlanDefinition | PlanDefinition | 45 | 151 | `input/fsh/profiles/artifact-profiles/cpg-computable-plandefinition.fsh` |
| `cpg-computablequestionnaire` | CPGComputableQuestionnaire | Questionnaire | 51 | 106 | `input/fsh/profiles/artifact-profiles/cpg-computable-questionnaire.fsh` |
| `cpg-careplan` | CPGCarePlan | CarePlan | 52 | 133 | `input/fsh/profiles/domain-profiles/cpg-careplan.fsh` |
| `cpg-careteam` | CPGCareTeam | CareTeam | 42 | 102 | `input/fsh/profiles/domain-profiles/cpg-careteam.fsh` |
| `cpg-careteamdefinition` | CPGCareTeamDefinition | CareTeam | 47 | 104 | `input/fsh/profiles/domain-profiles/cpg-careteamdefinition.fsh` |
| `cpg-case` | CPGCase | EpisodeOfCare | 52 | 124 | `input/fsh/profiles/domain-profiles/cpg-case.fsh` |
| `cpg-caseplanprogressingnote` | CPGCasePlanProgressingNote | CPGCasePlanSummary | 53 | 120 | `input/fsh/profiles/domain-profiles/cpg-caseplanprogressnote.fsh` |
| `cpg-caseplansummary` | CPGCasePlanSummary | Composition | 47 | 122 | `input/fsh/profiles/domain-profiles/cpg-caseplansummary.fsh` |
| `cpg-caseplansummarydefinition` | CPGCasePlanSummaryDefinition | CPGComputableGraphDefinition | 49 | 105 | `input/fsh/profiles/domain-profiles/cpg-caseplansummarydefinition.fsh` |
| `cpg-casesummary` | CPGCaseSummary | Composition | 49 | 128 | `input/fsh/profiles/domain-profiles/cpg-casesummary.fsh` |
| `cpg-casesummarydefinition` | CPGCaseSummaryDefinition | CPGComputableGraphDefinition | 52 | 110 | `input/fsh/profiles/domain-profiles/cpg-casesummarydefinition.fsh` |
| `cpg-clinicalimpression` | CPGClinicalImpression | ClinicalImpression | 49 | 114 | `input/fsh/profiles/domain-profiles/cpg-clinicalimpression.fsh` |
| `cpg-condition` | CPGCondition | Condition | 52 | 118 | `input/fsh/profiles/domain-profiles/cpg-condition.fsh` |
| `cpg-detectedissue` | CPGDetectedIssue | DetectedIssue | 49 | 114 | `input/fsh/profiles/domain-profiles/cpg-detectedissue.fsh` |
| `cpg-encounter` | CPGEncounter | Encounter | 53 | 119 | `input/fsh/profiles/domain-profiles/cpg-encounter.fsh` |
| `cpg-flag` | CPGFlag | Flag | 46 | 108 | `input/fsh/profiles/domain-profiles/cpg-flag.fsh` |
| `cpg-goal` | CPGGoal | Goal | 54 | 115 | `input/fsh/profiles/domain-profiles/cpg-goal.fsh` |
| `cpg-group` | CPGGroup | Group | 49 | 114 | `input/fsh/profiles/domain-profiles/cpg-group.fsh` |
| `cpg-groupdefinition` | CPGGroupDefinition | Group | 46 | 118 | `input/fsh/profiles/domain-profiles/cpg-groupdefinition.fsh` |
| `cpg-location` | CPGLocation | Location | 47 | 117 | `input/fsh/profiles/domain-profiles/cpg-location.fsh` |
| `cpg-locationdefinition` | CPGLocationDefinition | Location | 49 | 114 | `input/fsh/profiles/domain-profiles/cpg-locationdefinition.fsh` |
| `cpg-metricreport` | CPGMetricReport | MeasureReport | 49 | 125 | `input/fsh/profiles/domain-profiles/cpg-metricreport.fsh` |
| `cpg-ordersetdefinition` | CPGOrderSetDefinition | CPGComputablePlanDefinition | 45 | 113 | `input/fsh/profiles/domain-profiles/cpg-ordersetdefinition.fsh` |
| `cpg-organization` | CPGOrganization | Organization | 51 | 107 | `input/fsh/profiles/domain-profiles/cpg-organization.fsh` |
| `cpg-pathwaydefinition` | CPGPathwayDefinition | CPGComputablePlanDefinition | 48 | 119 | `input/fsh/profiles/domain-profiles/cpg-pathwaydefinition.fsh` |
| `cpg-patient` | CPGPatient | Patient | 45 | 99 | `input/fsh/profiles/domain-profiles/cpg-patient.fsh` |
| `cpg-practitioner` | CPGPractitioner | Practitioner | 47 | 97 | `input/fsh/profiles/domain-profiles/cpg-practitioner.fsh` |
| `cpg-practitionerrole` | CPGPractitionerRole | PractitionerRole | 43 | 98 | `input/fsh/profiles/domain-profiles/cpg-practitionerrole.fsh` |
| `cpg-practitionerroledefinition` | CPGPractitionerRoleDefinition | PractitionerRole | 45 | 102 | `input/fsh/profiles/domain-profiles/cpg-practitionerroledefinition.fsh` |
| `cpg-recommendationdefinition` | CPGRecommendationDefinition | CPGComputablePlanDefinition | 46 | 110 | `input/fsh/profiles/domain-profiles/cpg-recommendationdefinition.fsh` |
| `cpg-relatedperson` | CPGRelatedPerson | RelatedPerson | 45 | 97 | `input/fsh/profiles/domain-profiles/cpg-relatedperson.fsh` |
| `cpg-strategy` | CPGStrategy | RequestGroup | 49 | 144 | `input/fsh/profiles/domain-profiles/cpg-strategy.fsh` |
| `cpg-strategydefinition` | CPGStrategyDefinition | CPGComputablePlanDefinition | 46 | 117 | `input/fsh/profiles/domain-profiles/cpg-strategydefinition.fsh` |
| `cpg-workflowdefinition` | CPGWorkflowDefinition | CPGComputablePlanDefinition | 50 | 117 | `input/fsh/profiles/domain-profiles/cpg-workflowdefinition.fsh` |

For every listed ID, both `StructureDefinition-{id}-intro.md` and `StructureDefinition-{id}-notes.md` exist under `input/intro-notes`. This yields 78 scoped guidance files: 38 existing intros replaced, one intro added for CPGComputableQuestionnaire, and 39 ending notes added.

## Source ambiguities preserved and qualified

| Source issue | What the guidance says | Formal artifacts |
| --- | --- | --- |
| CPGMetricReport `measure` annotation says the definition is typically a Plan or Activity Definition, but its canonical target is CPGComputableMetric. | Names CPGComputableMetric as the actual target. | Unchanged. |
| CPGMetricReport `date` annotation calls it pertinent positive/negative information, despite its inherited dateTime type. | Treats date as a required report date and does not repeat the misplaced annotation. | Unchanged. |
| CPGCase description discusses a patient enrolled in one particular pathway; `enrolledIn` is `0..*`, while diagnosis is `1..*`. | States that enrollment links are optional/repeating and at least one CPGCondition diagnosis is required. Does not equate generic care episodes, eligibility, and persisted enrollment. | Unchanged. |
| CPGCaseSummary describes complete patient state, but no section inventory enforces completeness. | Bounds completeness to the selected guideline scope and identifies assembly/content review as an implementation responsibility. | Unchanged. |
| CPGCaseSummary summaryFor annotation identifies a case/EpisodeOfCare, but the shared extension permits additional CPG target types. | States one optional occurrence and the extension’s broader target support rather than claiming EpisodeOfCare-only typing. | Unchanged. |
| GroupDefinition `gdf-1` FHIRPath is expression-exists xor characteristic-exists; its XPath is only `exists(f:extension)`. | Explicitly describes the FHIRPath either/or requirement. The two supplied forms are not asserted equivalent; consumers relying on XPath need resolution of this pre-existing discrepancy. | Unchanged. |
| CPGStrategy’s subject targets base Patient, while many other domain profiles narrow references to CPGPatient. | Preserves that distinction explicitly. | Unchanged. |
| CPGGoal and CPGMetricReport retain broader base subject targets; metric/report types are not fixed to one individual-patient mode. | Avoids a new CPGPatient-only or individual-report restriction. | Unchanged. |
| Common PlanDefinition rating extensions are optional in the formal table, while methodology has content-authoring obligations. | Links to the existing methodology and keeps profile cardinality distinct from narrative obligations. | Unchanged. |
| The old CPGRelatedPerson intro classified it as a domain definition. Actual FSH represents a person linked to a patient. | Replaces that category label with an instance-level purpose and the actual required fields. | Unchanged. |

## Verification and remaining integration

- Exact current-ID coverage: 39/39 profiles, 78/78 expected files, no notes authored for orphan names or imported profiles.
- Checked usage-anchor IDs, introductory/combined lengths, two-to-four bullet bounds, relative narrative/profile link targets, and absence of added uppercase normative verbs.
- Compared SHA-256 hashes of all 39 owned FSH sources before and after authoring; unchanged. No formal resource, CQL, publisher, template, configuration, or other narrative-page edits were made for this follow-up.
- The notes were reviewed against the local FSH and inherited snapshots, including mandatory children inside optional blocks, fixed versus patterned codes, reference target narrowing, and optional must-support semantics.
- The coordinating agent owns the integrated Publisher build and verification that intro/notes appear on every generated artifact page. Passing these local authoring checks does not substitute for that render/build check.

## Final cross-review corrections

- Confirmed the inherited `RequestGroup.action.resource` comment in the published CPGStrategy baseline snapshot: targets are Request resources with `intent=option`. The strategy introduction and usage notes now distinguish that child intent from the group’s overall intent and from the receiving workflow’s selection, acceptance, and authorization.
- Clarified that CPGStrategy requires one `action.code` element, a CodeableConcept with an extensible common-process binding; this does not limit the CodeableConcept to one coding.
- Confirmed CPGEnabled and CPGPartOf extension FSH. The common PlanDefinition notes now distinguish Known from actively Enabled content, identify present-and-true enablement behavior, and explain recursive containing-pathway/strategy lookup for enrollment checks.

## Final layout review

The template supplies the Notes heading. Each fragment now begins with an empty block carrying its unique usage anchor; the redundant custom heading was removed after browser review. No explanatory text changed during this layout adjustment. Word counts above are source whitespace counts, including links and markup.
