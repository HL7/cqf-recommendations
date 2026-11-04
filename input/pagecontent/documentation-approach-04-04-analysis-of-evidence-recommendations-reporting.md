### Analysis of Evidence

Keep the evidence, the guideline group's [recommendation](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-recommendation), and the computable expression linked but distinct. Evidence reviewers assess what research supports; the guideline group decides what to recommend; clinical and informatics reviewers determine whether the formal expression preserves that decision.

#### Information from the Evidence

Record the source/version, clinical question, population, intervention/comparator, outcomes, timing, setting, effect estimates, and uncertainty relevant to the recommendation. Record evidence gaps and consensus judgments explicitly. Review methods belong to the evidence-synthesis discipline; [GIN–McMaster](https://cebgrade.mcmaster.ca/guidelinechecklistonline.html#Summarizingtable) and [AHRQ Evidence-based Practice Center Program](https://www.ahrq.gov/cpi/centers/cepi/index.html) provide broader guidance.

#### EBM-on-FHIR for Information from the Evidence

FHIR R4 includes [Evidence](https://hl7.org/fhir/R4/evidence.html) and [EvidenceVariable](https://hl7.org/fhir/R4/evidencevariable.html) resources for evidence-related representation. This CPG IG does not require a complete computable evidence-synthesis dataset or define an automatic transformation from study results into recommendations. Check the version-specific evidence specifications when exchanging such content; later FHIR releases have different models.

For this guide's recommendation definitions, supporting citations use `relatedArtifact`, and rating extensions communicate recommendation strength, evidence quality, and optionally direction. See the exact requirements in [Methodology: supporting information](methodology.html#guideline-supporting-information). [CPGComputablePlanDefinition](StructureDefinition-cpg-computableplandefinition.html) places the rating extensions on `PlanDefinition.action`; the underlying profile does not replace the narrative obligation to provide the required information.

### Recommendations

| Information | Question it answers | Review concern |
| --- | --- | --- |
| Evidence citation | Which source supports this recommendation? | Stable identity/version and traceability to the relevant passage. |
| Evidence quality/certainty | How confident are we in the supporting evidence? | Use the named method's definition; do not infer certainty from study design alone. |
| Recommendation strength | How strongly does the guideline group recommend this action? | Separate evidence certainty from benefits/harms, values, feasibility, and other judgments. |
| Direction | Is the recommendation for or against an action? | Preserve clinically meaningful negatives; do not turn absence of evidence into a negative recommendation. |
| Applicability and action | For whom, when, and what is proposed? | Explicit inclusion/exclusion, exceptions, timing, and patient-specific supporting facts. |
| Computable expression | How will a system identify the situation and produce the proposed response? | Concordance with clinical meaning, data assumptions, and reviewed examples. |
{:.grid}

The [GRADE Working Group](https://www.gradeworkinggroup.org/) describes certainty and recommendation strength as distinct judgments. This IG permits different rating systems; record the one actually used and how its values are communicated. If a recommendation is unsuitable for automation or measurement, record that decision rather than inventing missing criteria.

### Reporting and Dissemination

Publish the narrative recommendation, evidence/rationale, rating method, computable artifacts, review record, and known limits together or through stable links. Identify intended audiences, distribution targets, update responsibility, and how implementors can report problems.

The output is a traceable handoff to [co-development and artifact authoring](documentation-approach-04-05-computable-guideline-artifacts.html). Technical publication alone does not establish uptake or patient benefit; see the [CDS implementation evidence](documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.html#cds-implementation-evidence).
