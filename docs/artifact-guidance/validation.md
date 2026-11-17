# Artifact guidance validation

Completed 28 October 2026. All 82 CPG profiles and five CPG operations have an introduction and ending usage notes: 174 fragments under `input/intro-notes`. This replaces 75 existing introductions and adds 99 files. The inventory covers the seven artifact profiles, 32 domain profiles, 43 activity profiles, and five OperationDefinitions declared in the corresponding FSH directories. Extension definitions and CHF example profiles are outside this change.

## Publication and layout

The fragments use the Publisher's native `ResourceType-exactId-intro.md` and `ResourceType-exactId-notes.md` naming convention. No template, build configuration, formal resource, FSH, or CQL source was edited. The template supplies the Notes heading; each ending fragment supplies a stable usage anchor and artifact-specific guidance. Browser review removed a redundant custom heading before the final build.

The [rendered verification](rendered-verification.txt) passes for all 174 fragments and all 87 target pages. It verifies complete rendered text, links, anchor IDs and element types, and absence of duplicate custom headings. Separate slot-order checks confirm introduction, native Notes slot, and usage anchor order on all 87 pages. The coordinator visually inspected the recommendation profile and PlanDefinition apply operation, including introductions and endings, in the existing HL7 template.

## Source preservation

The [inventory](inventory.json) and verifier confirm:

- 608 repository source/configuration hashes and 288 template hashes match the baseline. Runtime/cache/version outputs excluded from the template comparison are listed explicitly.
- All 57 narrative pagecontent files, 22 narrative SVGs, and 24 out-of-scope intro-note files match the preceding narrative refresh.
- Of the prior 780 protected files, the 75 introductions authorized for this change are explicitly excepted; the other 705 hashes match. The original manifest remains unchanged.
- All 1,163 source files in the final frozen build snapshot match the workspace. Publisher rewrites the isolated build copy of `FHIR-cpg.xml` as part of its JIRA output generation; that runtime result matches the prior build byte-for-byte. The repository copy is unchanged.
- All 575 SUSHI-generated JSON resources match the prior build byte-for-byte, with no additions or removals.

The [build record](build-verification.json) records the snapshot digest, exact isolated paths, tool versions, and source comparisons. The source snapshot excludes review documents because this validation record is written after the build.

## Publisher result

The final full Publisher build completed with exit code 0 using Java 17.0.6, IGPublisher 2.3.1, SUSHI 3.19.0, Jekyll 4.3.3, and the unchanged `hl7.fhir.template#current` configuration. Runtime ASDF versions were supplied explicitly for the isolated temporary directory. The command remained `java -Xmx5g -jar input-cache/publisher.jar -ig .`.

| Finding | Prior narrative build | Final artifact-guidance build |
| --- | ---: | ---: |
| QA errors | 49 | 49 |
| Warnings | 135 | 135 |
| Informational findings | 14 | 14 |
| Broken HTML links | 26 | 26 |
| Invalid XHTML pages | 0 | 0 |

The [normalized QA comparison](publisher-comparison.json) has no added or removed findings and no added or removed HTML link errors. Publisher inspected 13,290 HTML files. The existing IG QA errors and broken links remain; build completion is not a clean overall QA result.

The local preview at `http://127.0.0.1:49483/en/` was switched atomically to the completed final output. Existing user tabs were preserved. No generated publication files were copied into the repository, and no commit, push, or external publication was performed.

## Technical review

Sol agents authored and cross-reviewed the profile guidance; the coordinator authored the operation guidance, which received an independent Sol review. Luna maintained exact coverage, preservation, and rendered-fragment checks. The coordinator reviewed the integrated content and final publication.

The [model-profile ledger](model-profile-notes.md), [activity-profile ledger](activity-profile-notes.md), and [operation ledger](operation-notes.md) record existing description/constraint discrepancies. Notes follow the actual contracts, distinguish optional support from required cardinality, preserve request/event and definition/instance meanings, and explain operation selector/output ambiguities without changing their formal definitions. These are publication and narrative checks, not execution of a clinical reasoning service.
