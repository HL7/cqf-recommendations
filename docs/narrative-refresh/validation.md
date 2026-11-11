# Narrative refresh validation

## Rendered link repair

The 11 November 2026 follow-up compared two IG Publisher 3.0.3 builds of the integrated ballot, before and after the link repair. The build now reports zero broken links, down from 21, and 22 Publisher errors, down from 51. No new errors or warnings appeared. The 616 SUSHI-generated resources and all 29 rendered conformance statements matched the pre-fix build.

The shared PlanDefinition template generated links to local CQL anchors even when no matching definition was rendered. The [local condition template](../../input/liquid/plandefinition-condition.html) displays the expression and uses Publisher's resolved Library link when the plan supplies a single Library and the expression has no separate reference. The cardiology consult profile now links to its [Procedure example](../../input/intro-notes/StructureDefinition-chf-cardiology-consult-intro.md). That broken link appeared in the HTML link count only. [HL7 template guidance](https://build.fhir.org/ig/FHIR/ig-guidance/template.html) · [Shared condition template](https://github.com/HL7/ig-template-base2/blob/main/liquid/plandefinition-condition.html)

| Original errors | Cause | Result |
| ---: | --- | --- |
| 20 | Generated CQL links in 19 activity PlanDefinitions and one embedded Bundle entry pointed to missing anchors. | Resolved by the condition template. |
| 8 | Five CQL conditions in the CHF Lasix, common registration, and VA CKD PlanDefinitions had empty links. Publisher also reported one invalid URL per PlanDefinition. | Resolved by the condition template. |
| 1 | Activity Examples skipped from heading level 2 to level 4. | Resolved by promoting the activity headings one level. Existing section IDs still resolve. |
| 9 | Six references in the Administer Medication collection and Bundle use legacy FHIRHelpers or FHIR ModelInfo canonicals from [RelatedFHIRLibraries](../../input/fsh/rules.fsh). Three references to FHIRHelpers come from generated data requirements on CHF measures. | Remain. Publisher cannot resolve these canonicals. |
| 6 | Publisher generates the CRMI `effectiveDataRequirements` extension on three CHF measures. The guide has no CRMI dependency, so the validator reports both the unrecognized extension and its unresolved URL on each measure. | Remain. |
| 3 | The potassium, creatinine, and eGFR leaf actions in the [CHF Hypervolemia example](../../input/fsh/examples/chf-examples/test-cases/chf-scenario1-hypervolemia.fsh) violate `rqg-1`. Each has neither a resource nor child actions. | Remain. |
| 3 | The main guide and CHF example guide lack the standards-status extension. The CHF example guide also lacks the workgroup extension. | Remain. |
| 1 | The [generate-report example Measure](../../input/fsh/examples/activity-examples/resources/measure-activity-example-generatereport.fsh) uses CQL criteria without declaring a Library. | Remains. |

Separately, both build logs report that CHF CQL translation succeeds and Publisher then encounters `Unknown FHIRTypes code 'Any'` while generating the Library output. This message is outside the 51 counted errors.

The rendered checker passed for 39 narrative pages and 31 legacy redirect pages. Chromium checked all 435 legacy and current navigation routes and followed all 21 repaired links.

## STU 3 ballot integration

The 11 November 2026 validation compared the branch with STU 3 ballot commit `e2fb41324f63f4af4b687121f7ead14cf5a1c1a0`. Both builds used IG Publisher 3.0.3, SUSHI 3.19.0, and the same local package cache. Both builds completed successfully.

The 615 generated FHIR resource files other than the ImplementationGuide matched byte for byte. The ImplementationGuide reflects the new chapter and menu configuration. All 29 statements in the rendered conformance index matched the ballot's text, expectation, category, and conditionality.

`verify.py` passed the source and rendered checks for 39 narrative pages and 31 legacy redirect pages. Chromium checked all 42 links from the ballot's §2.0.1 table within 435 route checks, including old section bookmarks, query preservation, and a redirect page with JavaScript disabled. The five-chapter sequence and seven expandable reading paths were checked in the desktop and narrow Approach layouts. Each chapter's navigation and figures loaded.

| Publisher finding | STU 3 ballot | Integrated branch |
| --- | ---: | ---: |
| Errors | 51 | 51 |
| Warnings | 180 | 179 |
| Hints | 440 | 440 |
| Broken HTML links | 39 | 21 |
| Invalid XHTML pages | 1 | 1 |

The comparison found no new Publisher errors, warnings, or broken HTML links. The narrative checker reports three inherited duplicate named anchors in the generated conformance index separately. The baseline also reports a CHF ELM generation error. This verification covers the source and rendered publication.

Build the pinned ballot and candidate in separate directories, then run the verifier against both completed builds.

```sh
python3 docs/narrative-refresh/verify.py \
  --site /path/to/candidate/output/en \
  --baseline-site /path/to/ballot/output/en
```

## Original narrative refresh

Validation date: 28 October 2026. Baseline: `320b164065d795dd0b7ab9ab313a67f129e06dc7`.

## Source preservation and editorial checks

`python3 docs/narrative-refresh/verify.py` passes. It checks:

- SHA-256 equality for all 780 files in `protected-files.json`, covering the stable artifact sources, included content, and build configuration.
- The same 57 narrative page filenames, with `changes.md` unchanged.
- Every original rendered heading/explicit anchor, no duplicate narrative anchors, and current narrative-to-narrative fragment links.
- Exact include/highlight directives and unchanged L2/L3/L4 checklist table rows.
- Per-page counts of active uppercase SHALL, SHOULD, MAY, MUST, and REQUIRED terms, excluding HTML comments. Semantic review checked their wording and applicability; matching counts alone would not establish preservation.
- All 22 diagram SVGs regenerate byte-for-byte from their JSON specifications and contain accessible title/description text. All active narrative images have alternative text and resolve to the new SVGs.
- Diagram markup avoids the existing template's `p > img` float rule.

Only the 56 active narrative files are modified among existing tracked files. New files are the diagram sources/renderer, SVGs, and review/verification documents. Existing artifact, image, template, and configuration files remain unchanged. The narrative-source whitespace count is 90,178 before and 47,367 after, approximately 47% lower. This metric includes markup, code, and unchanged checklist tables; it is not a count of rendered prose alone.

## Publisher build

The baseline was built from a clean archive of the baseline commit. The candidate is built from an isolated copy of the working tree, with no edits to templates or configuration. Both use Java 17.0.6, IGPublisher 2.3.1, SUSHI 3.19.0, and Jekyll 4.3.3. The repository's `hl7.fhir.template#current` setting remains unchanged. The command is:

```sh
java -Xmx5g -jar input-cache/publisher.jar -ig .
```

Publisher JAR SHA-256: `60f8bb09a2da292d9b5979d8908a47353b65090a57d385ca8390e209ebc09f0c`.

The final full Publisher build completed with exit code 0. Its 1,010 frozen input/configuration/diagram files match the current workspace by SHA-256. The [build record](build-verification.json) records the exact snapshot digest and isolated build paths; [source and rendered checks](source-and-rendered-verification.json) report no errors.

| Publisher finding | Baseline | Final candidate |
| --- | ---: | ---: |
| QA errors | 49 | 49 |
| Warnings | 137 | 135 |
| Informational findings | 14 | 14 |
| Broken HTML links | 32 | 26 |
| Invalid XHTML pages | 0 | 0 |

The [normalized comparison](publisher-comparison.json) found **no new errors, warnings, or broken HTML links**. All 49 QA errors and all 26 remaining link-error diagnostics also occur in the baseline. The remaining broken links are on generated artifact pages. This is not a clean overall IG QA result; those existing issues remain outside this narrative-only change.

Six download-link errors were removed. All seven archive links, including the full IG ZIP, now resolve from the language-specific page. The illegal-HTML warning on `activityflow.html` was removed. The other warning reduction is a local `#dev` dependency-cache effect after Publisher installed the guide package; it is not attributed to the narrative rewrite. Two informational conformance-text messages quote different paragraph excerpts after reorganization; the underlying obligations are retained.

`verify.py --site` checked relative targets, image files, and fragment destinations in all 57 generated narrative pages, including the unchanged history page, with no failures. Publisher inspected 13,290 HTML files overall. The final browser preview was switched to this completed Publisher output after verification. No generated publication files were committed to the source tree.

To reproduce the baseline comparison with two completed Publisher output directories:

```sh
python3 docs/narrative-refresh/compare_publisher.py \
  --baseline /path/to/baseline/output \
  --candidate /path/to/candidate/output \
  --output /path/to/comparison.json
```

## External references

The last HTTP pass checked 219 distinct destinations across 56 active narrative pages: 130 reachable, 23 redirected, 0 not found, 65 blocked, 1 timeout, and 0 other errors. `changes.md` and three illustrative `example.org` URLs were excluded. The timeout was JATS4R, redirecting to `jats4r.niso.org`. Blocked/challenged sites were not declared dead. These results are endpoint observations, not an assertion that every linked document was fully accessible or semantically verified.

Subsequent edits only wrapped diagrams in layout blocks. Re-extracting the source confirmed the same URL set and referencing pages. The original HTTP timestamps and line numbers remain in `final-link-checks.json`; its post-check annotation records the source comparison. The publication review separately documents which primary full texts, abstracts, and indexed excerpts were used for the evidence synthesis.

## Visual and semantic review

All 22 diagram specifications were independently compared with their surrounding narrative and inspected after rasterization. The coordinator checked the rendered home, methodology, conceptual architecture, interactive CDS, literature, and downloads pages in the existing HL7 template, including narrow and desktop-width views.

The browser review identified and resolved the template's floating-image interaction by changing narrative wrappers only. Edge-label text was increased to the common 16px minimum and rechecked. The independent source-semantic review covered operation results, resource/profile mappings, enrollment, intent/status, questionnaire processing, normative language, and the historical clinical examples. Findings and resolutions are recorded in the linked review ledgers.

This is publication and editorial validation. It does not execute a clinical reasoning engine, establish vendor interoperability, validate current clinical recommendations, or constitute clinical approval of a content package. Historical examples and stable artifacts keep their original clinical scope and versions.
