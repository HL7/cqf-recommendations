# Bounded reference-page rewrite ledger

Research snapshot: 28 October 2026. This ledger covers the ten authorized `input/pagecontent` pages only. It records prose/navigation edits and technical-link changes; it does not describe a build or publication.

## Files changed

- `checklists.md`: added a short L1–L4 reading path and clarified what each checklist helps a team produce.
- `clinical-guidelines-development-L1-checklist.md`: clarified purpose, scope, provenance, and applicability of the GIN–McMaster checklist; updated the two version-algorithm links to the verified FHIR R5 value set, explicitly labeled as a later-version reference.
- `clinical-guidelines-development-L2-checklist.md`: added an orientation to L2's inputs, decisions, and handoff to computable content.
- `clinical-guidelines-development-L3-checklist.md`: added an orientation to publication, computable artifacts, decision logic, and review.
- `clinical-guidelines-development-L4-checklist.md`: added an orientation to local adoption, workflow fit, testing, training, deployment, and evaluation.
- `artifacts.md`: clarified how to use the generated artifact indexes; replaced the broken WHO/ILO attribution destinations with the primary-source landing pages supplied and verified by root.
- `examples.md`: clarified navigation and historical/illustrative status; replaced stale CQFramework sample-guide targets with the verified canonical CQFramework example pages (5 canonical roots and 29 resource URLs). No clinical content was updated.
- `examples-activities.md`: clarified the activity examples' task and lifecycle coverage and their demonstrative, non-production scope.
- `downloads.md`: clarified which downloadable material to use and corrected the FHIR validation link to the verified R4 page.
- `examples-chf.md`: replaced the `CHFCasePlanSummaryView.png` embedded screenshot with an accessible HTML/Markdown table summarizing only the dimensions and cues already described in the page. The table is labeled illustrative and not a separate computable artifact. No clinical values or artifact sample blocks were added or changed; the image asset remains in `input/images` but is no longer referenced by this page.

## Preserved invariants checked

- L2 and L3 each retain all 14 literal `Required` markers. Checklist rows, labels, notes, and attribution are preserved. The two L1 version-algorithm link targets now point to the R5 value set; the obligation wording remains intact.
- Existing headings, explicit `{#...}` anchors, and include directives were compared with their original inventory and retained. Generated indexes remain present.
- `examples.md` has no remaining `branches/main` CQFramework routes or old `http://cqframework.org` roots. CHF sample artifact blocks after `### Pathway` were left intact.
- No clinical recommendation or example artifact content was revised.

## Link dispositions

- The two L1 version-algorithm links now point to the official published [FHIR R5 Version Algorithm value set](https://hl7.org/fhir/R5/valueset-version-algorithm.html), which directly defines the algorithm concept and is explicitly labeled as an informative later-version reference; it does not change the guide from R4. The earlier R4 `versions.html` policy link was removed because it does not define artifact `versionAlgorithm` semantics.
- The downloads validation link points to `https://hl7.org/fhir/R4/validation.html`, which returned 200 and is the R4-specific validation page.
- CQFramework root and resource links in `examples.md` were changed only where the source link's validated alternative had been checked as equivalent for the reference purpose. The canonical URLs are under `https://www.cqframework.org/cpg-example-{anc,anthrax,ckd,opioids,hepb}/`; resource links retain their matching filenames. Other historical example routes elsewhere in the guide were not changed in this bounded rewrite.
- The `artifacts.md` WHO/ILO attribution links now use official primary landing pages: WHO [Classifying health workers](https://www.who.int/publications/m/item/classifying-health-workers) (the mapping document with PDF) and ILO [ISCO-08](https://isco.ilo.org/en/isco-08/). The linked source concepts and guide code values were not changed.

## Current active-link check scope

`link-checks-draft.json` records a working-tree pass at 2026-10-28 14:01 UTC over 56 active Markdown files under `input/pagecontent` (all Markdown files except `changes.md`, which is historical). It parsed balanced Markdown link destinations and HTML `href` targets, plus bare HTTP(S) mentions outside recognized link targets, then made one unauthenticated GET per distinct exact URL with redirects followed, concurrency capped at 6, 5/15 second connect/read timeouts, and a 4096-byte streamed sample for common challenge text.

This pass checked 272 distinct URL strings (353 line-level occurrences): 180 reachable, 35 redirected, 16 not found, 38 blocked, 0 timeouts, and 3 errors. This is endpoint reachability evidence, not semantic or freshness validation. A 403/429 is blocked, not dead; a 200 response can still be a challenge page. The 16 not-found set includes three `example.org` URLs embedded as sample JSON in `interactive-cds.md`, and broken/historic targets in other pages. At the time of this draft pass, the old WHO PDF was not found and the old ILO destination was blocked; both attribution targets have since been replaced with primary-source landing pages. Exact outcomes and source locations for that draft pass are in `link-checks-draft.json`; the separate `link-checks.json` is baseline-commit evidence, not a current-tree check.

The extraction is bounded to supported link forms and current checked-out text. It may miss malformed Markdown destinations, URLs split across lines, and URLs encoded or assembled by templates. The scan intentionally does not count URLs found only in `changes.md`. DOI/publisher access blocks do not invalidate the citations. Official CQL, CRMI, and CDS Hooks targets were also checked against primary HL7 publications through web search; the official Using CQL with FHIR page identifies the published R4 guide. No R5 upgrade was made.


## Final candidate link check

`final-link-checks.json` records the last passive HTTP scan, including the internal download-link correction. Subsequent edits wrapped diagrams in HTML blocks; a separate source extraction confirmed that all 219 URLs and their referencing pages were unchanged. Original line numbers remain those of the HTTP scan. The reproducible checker is [`check_external_links.py`](check_external_links.py); it takes `--candidate-dir` and `--output` arguments and requires Python's `requests` package. It scanned 56 active Markdown files, excluding `changes.md`, and checked 219 distinct URLs (330 line occurrences), excluding three `example.org` sample placeholders. Results at 2026-10-28 14:56 UTC: 130 reachable, 23 redirected, 0 not found, 65 blocked, 1 timeout, and 0 errors. No 404 remains in this checked scope. The one timeout was the JATS4R link from the L1 checklist, redirecting to `jats4r.niso.org`. Blocked results are not classified as dead; they include publisher/institutional access restrictions and challenge responses. Response classifications varied between runs, especially for bot-protected sites. This check establishes endpoint response status only, not semantic correctness or freshness.

## Publisher download-link correction

The coordinating agent corrected all seven ZIP links in `downloads.md` after the baseline Publisher build showed that archives are emitted at the publication root while narrative pages are emitted in `en/`. A page-path conditional keeps root-level builds relative to their own directory and uses `../` for language-directory builds. The current template and generated archives were not changed. Both path cases were checked with Liquid, followed by the final Publisher and rendered-target checks in `validation.md`.
