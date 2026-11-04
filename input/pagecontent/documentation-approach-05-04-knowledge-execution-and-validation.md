### Knowledge Execution

Execution evaluates computable artifacts against data in a defined context. Record the artifact, library, model, engine, terminology, and input-data versions needed to reproduce a result. The output is information or proposed activity; execution alone does not authorize or perform care.

For processing contracts and deployment choices, use [methods of implementation](documentation-approach-09-methods-of-implementation.html) and [mechanisms of integration](documentation-approach-10-mechanisms-of-integration.html). CDS Hooks supplies invocation and response interfaces, not CQL evaluation semantics.

### Knowledge Validation

Validate different questions separately. Use approved clinical cases and expected outputs from [translation](documentation-approach-05-02-knowledge-translation.html), and return discrepancies to the responsible clinical or technical owner.

<div style="clear: both;">
  <img src="cpg-method-validation.svg" alt="Clinical meaning, structural conformance, logic behavior, and local integration each produce distinct validation evidence." class="img-responsive center-block" width="1000"/>
</div>

| Validation track | Question | Evidence to retain |
| --- | --- | --- |
| Structural conformance | Do resources, references, profiles, terminology, and dependencies satisfy the selected contract? | Validator findings, package/dependency versions, unresolved warnings and errors |
| Logic tests | Do individual expressions and composed artifacts return the expected results? | Inputs, expected/actual results, boundary/temporal/missing-data cases, engine versions |
| Clinical review | Do concepts, criteria, exceptions, and actions preserve the source's intended meaning? | Reviewer, source version, reviewed cases, decisions and unresolved concerns |
| Input-data validation | Do local codes, values, units, time, statuses, and completeness meet the expressions' assumptions? | Mapping review, representative cases, data-quality findings and limitations |
| Integration and usability | Do actual triggers, access, timing, rendering, actions, and failure behavior work in the target setting? | Environment/capability record, integration scenarios, user review and defect disposition |
| Operational/effect evaluation | Is the intervention used appropriately and does it improve the intended outcomes without unacceptable effects? | Monitoring, clinically reviewed usage, workload, care-process, patient-outcome and harm measures |
{:.grid}

Synthetic cases make expected behavior reproducible, while representative local data expose real encoding and availability constraints. Neither replaces the other. Population summaries can locate patterns; patient-level review explains individual discrepancies. Protect data appropriately and keep an execution failure, missing fact, invalid input, and a clinically negative result distinguishable.

The 2025 retrospective assessment of three standards-based CDS tools tested accuracy in a small single-center sample; it did not establish prospective clinical benefit. A 2026 cloud-hosted implementation used progressive testing and still required local adaptations. These are useful test examples with explicit limits. [Isabelle et al., 2025](https://doi.org/10.1093/jamiaopen/ooaf085); [Shenvi et al., 2026](https://doi.org/10.1002/lrh2.70104).

Retain separate review findings and known limitations for the [Validate step](methodology.html#validate-step) and [L3/L4 checklists](checklists.html). Successful structural checks or logic tests do not certify safety, usability, or improved outcomes. After release, monitor both incorrect firings and expected firings that disappear; [malfunction evidence](https://doi.org/10.1093/jamia/ocae187) supports ongoing surveillance.
