# Methodology and evidence-development rewrite

Completed 2026-10-28. Ownership: the 15 Group B narrative pages in `editorial-plan.md`. This records editorial work and validation, not clinical approval or a change to formal artifacts.

## Changes and boundaries

- Rewrote 15 pages from 34,897 to 11,795 whitespace-delimited words (approximately 66% shorter). The evidence hub is intentionally longer because selected scholarly evidence is now part of published narrative.
- Organized work around decisions, inputs, outputs, responsible reviewers, and validation. Consolidated repeated theory into owning-page links.
- Preserved all 16 active methodology requirement paragraphs verbatim and both requirement-containing HTML comments inactive. Preserved all embedded include/highlight directives and the request/event profile inventories.
- Retained page URLs, explicit IDs, and aliases for original generated heading anchors near equivalent sections or lifecycle-table rows. Repeated methodology headings now have explicit unique IDs.
- Preserved the case study as a November 2020 account, including its historical decision not to provide evidence/strength ratings; explicitly stated that this is not an exemption from current requirements. No clinical thresholds or recommendations were updated.
- Replaced every raster reference on these pages with eight original SVGs or text tables. Original raster files remain in the repository because deletion and any other-page references are outside this ownership.
- Published the selected CDS evidence hub at `documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.html#cds-implementation-evidence`, distinguishing general CDS effectiveness/safety evidence from standards-specific feasibility, use, accuracy, framework, and protocol evidence.

## Page accounting

| Page | Before words | After words |
| --- | ---: | ---: |
| `methodology.md` | 7,267 | 2,795 |
| `methodology-case-study.md` | 9,889 | 1,496 |
| `documentation-methodology.md` | 681 | 547 |
| `documentation-approach-04-02-guideline-development-frameworks.md` | 658 | 448 |
| `documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.md` | 1,627 | 2,223 |
| `documentation-approach-04-04-analysis-of-evidence-recommendations-reporting.md` | 873 | 466 |
| `documentation-approach-04-05-computable-guideline-artifacts.md` | 1,225 | 440 |
| `documentation-approach-04-guideline-development.md` | 1,656 | 412 |
| `documentation-approach-05-01-knowledge-acquisition.md` | 1,586 | 443 |
| `documentation-approach-05-02-knowledge-translation.md` | 993 | 344 |
| `documentation-approach-05-03-knowledge-representation.md` | 541 | 325 |
| `documentation-approach-05-04-knowledge-execution-and-validation.md` | 566 | 437 |
| `documentation-approach-05-05-knowledge-implementation.md` | 1,726 | 499 |
| `documentation-approach-05-06-agile-cpg-development-approach.md` | 3,297 | 543 |
| `documentation-approach-05-knowledge-engineering-overview.md` | 2,312 | 377 |

## Diagram sources and visual review

All diagram sources are `diagrams/narrative/cpg-method-*.json`; corresponding SVGs are under `input/images`. They use the shared `diagrams/render_narrative.py` without modifying it. Width is 1000, minimum text size 16, with explicit coordinates, accessible title/description, consistent colors, and textual explanations alongside diagrams. No external figure was copied or closely traced. The integrated-process handoff is an original simplified conceptual summary, attributed to Matson-Koffman et al.; it is not a reproduction of the published twelve-phase diagram.

| Source / output stem | Purpose |
| --- | --- |
| `cpg-method-recipe` | Select → Represent → Translate → Validate → Package work products. |
| `cpg-method-handoff` | Clinical, engineering, and implementation responsibility and reviewed feedback. |
| `cpg-method-translation` | Source meaning → explicit reviewed specification → formal artifact authoring. |
| `cpg-method-validation` | Separate clinical, structural, logic, and integration findings. |
| `cpg-method-governance` | Local clinical, technical, and operational readiness decisions. |
| `cpg-method-iteration` | Bounded reviewed increments, evaluated use, and feedback. |
| `cpg-method-case-study` | Historical 2020 project stages and work products. |
| `cpg-method-formalisms` | Compare optional BPM+ and FHIR/CQL representations against shared cases. |

Rendered all eight with the shared stdlib renderer, then rasterized with CairoSVG and visually inspected an eight-panel contact sheet. No clipped boxes, overlapping node text, obscured arrows, or missing labels were observed. Local QA images are under `/tmp/cpg-method-preview`; they are temporary verification artifacts, not published assets. A page-level IG/browser render remains the coordinating agent’s aggregate check.

## Every original image reference: disposition

75 raster references to 62 distinct files occurred in these 15 pages. The table accounts for each page/image pair. “Replaced” means the reference is removed from the page, not that the source raster file was deleted.

| Original page | Original image | Replacement / disposition |
| --- | --- | --- |
| `methodology.md` | `types-of-igs.png` | Replaced by `cpg-method-recipe.svg`, `cpg-method-translation.svg`; category table and retained included examples. |
| `methodology.md` | `Recommendation04-05-flow.png` | Replaced by `cpg-method-recipe.svg`, `cpg-method-translation.svg`; category table and retained included examples. |
| `methodology-case-study.md` | `image37.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image30.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image10.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image14.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image2.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image17.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image5.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image36.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image15.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image32.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image22.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image6.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image24.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image7.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image18.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image3.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image28.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image23.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image8.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image4.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image16.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image19.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image20.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image34.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image35.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image11.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image13.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image29.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image21.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image9.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image1.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image33.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image38.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image25.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image12.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image27.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image26.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `methodology-case-study.md` | `image31.png` | Replaced by `cpg-method-case-study.svg`; staged work-product tables and historical narrative. |
| `documentation-methodology.md` | `transformation-process.png` | Replaced by `cpg-method-formalisms.svg`; textual pattern mappings and all eight retained XML includes. |
| `documentation-methodology.md` | `process-pattern-sequenceFlow.png` | Replaced by `cpg-method-formalisms.svg`; textual pattern mappings and all eight retained XML includes. |
| `documentation-methodology.md` | `process-pattern-parallelSplit.png` | Replaced by `cpg-method-formalisms.svg`; textual pattern mappings and all eight retained XML includes. |
| `documentation-methodology.md` | `process-pattern-exclusiveSplit.png` | Replaced by `cpg-method-formalisms.svg`; textual pattern mappings and all eight retained XML includes. |
| `documentation-methodology.md` | `process-pattern-timedStart.png` | Replaced by `cpg-method-formalisms.svg`; textual pattern mappings and all eight retained XML includes. |
| `documentation-approach-04-02-guideline-development-frameworks.md` | `CPG-04-01.png` | Replaced by framework comparison and textual evidence-organization explanation. |
| `documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.md` | `CPG-04-02.png` | Replaced by `cpg-method-iteration.svg`; textual 6S comparison and published CDS literature tables. |
| `documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.md` | `CPG-04-03.png` | Replaced by `cpg-method-iteration.svg`; textual 6S comparison and published CDS literature tables. |
| `documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.md` | `CPG-05.05-Agile.png` | Replaced by `cpg-method-iteration.svg`; textual 6S comparison and published CDS literature tables. |
| `documentation-approach-04-05-computable-guideline-artifacts.md` | `CPG-04.05-01.png` | Replaced by `cpg-method-handoff.svg`; reviewed-handoff table. |
| `documentation-approach-04-guideline-development.md` | `CPG-04-00.png` | Replaced by `cpg-method-handoff.svg`; concise hub links and handoff table. |
| `documentation-approach-04-guideline-development.md` | `CPG-04-01.png` | Replaced by `cpg-method-handoff.svg`; concise hub links and handoff table. |
| `documentation-approach-04-guideline-development.md` | `CPG-04-02.png` | Replaced by `cpg-method-handoff.svg`; concise hub links and handoff table. |
| `documentation-approach-04-guideline-development.md` | `CPG-04-03.png` | Replaced by `cpg-method-handoff.svg`; concise hub links and handoff table. |
| `documentation-approach-05-01-knowledge-acquisition.md` | `CPG-05-01.png` | Replaced by `cpg-method-translation.svg`; source/meaning/case handoff table. |
| `documentation-approach-05-01-knowledge-acquisition.md` | `CPG-05-02.png` | Replaced by `cpg-method-translation.svg`; source/meaning/case handoff table. |
| `documentation-approach-05-02-knowledge-translation.md` | `CPG-05-03.png` | Replaced by `cpg-method-translation.svg`; decision-specification and ambiguity-review table. |
| `documentation-approach-05-02-knowledge-translation.md` | `CPG-05-01.png` | Replaced by `cpg-method-translation.svg`; decision-specification and ambiguity-review table. |
| `documentation-approach-05-02-knowledge-translation.md` | `CPG-05-02.png` | Replaced by `cpg-method-translation.svg`; decision-specification and ambiguity-review table. |
| `documentation-approach-05-02-knowledge-translation.md` | `CPG-KnowledgeEngineering-w-Agile.png` | Replaced by `cpg-method-translation.svg`; decision-specification and ambiguity-review table. |
| `documentation-approach-05-03-knowledge-representation.md` | `CPG-KCMS.png` | Replaced by textual artifact/dependency curation and management table. |
| `documentation-approach-05-04-knowledge-execution-and-validation.md` | `CPG-KnowledgeValidation.png` | Replaced by `cpg-method-validation.svg`; distinct validation-track table. |
| `documentation-approach-05-04-knowledge-execution-and-validation.md` | `CPG-PatientLevelValidation.png` | Replaced by `cpg-method-validation.svg`; distinct validation-track table. |
| `documentation-approach-05-05-knowledge-implementation.md` | `CPG-05-04.png` | Replaced by `cpg-method-governance.svg`; local decision/owner/evidence table. |
| `documentation-approach-05-05-knowledge-implementation.md` | `CPG-05-05.png` | Replaced by `cpg-method-governance.svg`; local decision/owner/evidence table. |
| `documentation-approach-05-05-knowledge-implementation.md` | `CPG-05.05-Agile.png` | Replaced by `cpg-method-governance.svg`; local decision/owner/evidence table. |
| `documentation-approach-05-06-agile-cpg-development-approach.md` | `CPG-05.06-01.png` | Replaced by `cpg-method-iteration.svg`; reviewed-increment table and nonclinical test pattern. |
| `documentation-approach-05-06-agile-cpg-development-approach.md` | `CPG-KnowledgeEngineering-w-Agile.png` | Replaced by `cpg-method-iteration.svg`; reviewed-increment table and nonclinical test pattern. |
| `documentation-approach-05-06-agile-cpg-development-approach.md` | `CPG-05.05-Agile.png` | Replaced by `cpg-method-iteration.svg`; reviewed-increment table and nonclinical test pattern. |
| `documentation-approach-05-knowledge-engineering-overview.md` | `CPG-05-00.png` | Replaced by `cpg-method-iteration.svg`; six-phase responsibility/input/output/review table. |
| `documentation-approach-05-knowledge-engineering-overview.md` | `CPG-05-01.png` | Replaced by `cpg-method-iteration.svg`; six-phase responsibility/input/output/review table. |
| `documentation-approach-05-knowledge-engineering-overview.md` | `CPG-05-02.png` | Replaced by `cpg-method-iteration.svg`; six-phase responsibility/input/output/review table. |
| `documentation-approach-05-knowledge-engineering-overview.md` | `CPG-05-03.png` | Replaced by `cpg-method-iteration.svg`; six-phase responsibility/input/output/review table. |
| `documentation-approach-05-knowledge-engineering-overview.md` | `CPG-05-04.png` | Replaced by `cpg-method-iteration.svg`; six-phase responsibility/input/output/review table. |
| `documentation-approach-05-knowledge-engineering-overview.md` | `CPG-05-05.png` | Replaced by `cpg-method-iteration.svg`; six-phase responsibility/input/output/review table. |

## Verification

- All 15 page files remain present; no page URL was removed.
- Compared exact active normative paragraphs and inactive requirement comments with the pre-edit baseline; all retained.
- Compared embedded include/highlight directives with the pre-edit baseline; all retained.
- Checked old explicit/generated heading IDs, current duplicate IDs, internal narrative-page fragments, and image existence: no findings in this ownership.
- Checked there are no remaining raster `<img>` references on these 15 pages and parsed the eight SVGs as XML; minimum text size is 16.
- Repaired previously unlinked Enrollment/GenerateReport activity-example entries using exact instance IDs verified in protected FSH; parameter content and profile inventories remain unchanged.
- Independently inspected protected profile source to distinguish PlanDefinition definitions from RequestGroup instances and to locate ratings on `PlanDefinition.action`.
- Inspected the frozen BPMN/PlanDefinition XML pattern snippets. Corrected surrounding prose to use `action.relatedAction`, identify the actual timed trigger, and avoid automatic synchronization/semantic-equivalence claims.
- Root owns the aggregate publisher/build, all-page link checking, protected-tree comparison, and final rendered-page inspection. These local checks do not establish a successful complete IG build.

## Source review and unresolved semantic issues

- Citation-review follow-up: the Jing 2025 primary PDF reports 465 rules in intermediate representations but only 12 developed/tested CQL rules/files, with remaining conversion ongoing. Narrowed research notes and published narrative accordingly.
- Citation-review follow-up: omitted the optional G05 statement about specific infectious/thrombotic complications. JAMA’s Results does describe no identified specific complications in the four delayed-treatment records, but its discussion cannot establish overall/net benefit; omission keeps the important limitation clear.
- Current narrative requires recommendation ratings, while the protected profile’s rating extensions have `0..1` cardinality with must-support. Preserved the narrative requirements and did not tighten formal artifacts. The historical case’s omitted ratings remain explicitly historical.
- Frozen mapping snippets include placeholder expression-language/content examples and illustrative implicit elements. Preserved snippets unchanged, clearly labeled them historical patterns, and did not claim they validate or execute as production CQL.
- Some older external reference locations and the historical ACEP Google-redirect links may have moved. Retained historical links with dates/purpose; no claim of current clinical currency or a comprehensive external-link validation.
- No conformance artifact, include file, publisher/template/configuration file, CQL, instance, vocabulary, git commit, or publication was changed by this rewrite.

## Aggregate QA follow-up

- Replaced the obsolete Opioid Prescribing CI root with the verified current published R4 guide at `https://www.fhir.org/guides/cdc/opioid-cds/`.
- Replaced the obsolete WHO ANC CI root with WHO's official publication catalogue at `https://smart.who.int/`; the prose states that its ANC FHIR guide is a working draft. The catalogue currently links the working guide at `https://build.fhir.org/ig/WorldHealthOrganization/smart-anc/`; no unverified published replacement was invented.
- Removed the obsolete opioid `quick-start.html` citation. The maintained published `https://www.fhir.org/guides/cdc/opioid-cds/documentation.html` is described accurately as pilot-testing documentation distinguishing validated and unvalidated functionality, not as an equivalent quick-start tutorial.
- Added three exact Kramdown/GFM legacy IDs identified by aggregate extraction, preserving punctuation-generated doubled/trailing hyphens in the historical case study.
