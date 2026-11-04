### Evidence

Begin with the reviewed recommendation and supporting evidence described in [analysis and reporting](documentation-approach-04-04-analysis-of-evidence-recommendations-reporting.html). Keep its identity and version linked to every derived representation. The evidence synthesis and the executable decision serve different purposes and can change for different reasons.

### Co-Development of Guidelines and Computable Clinical Guideline Artifacts

Clinical authors, informaticians, implementors, communicators, and evaluators work on connected products. An implementor's data-availability finding may require clarification of a term; a clinical review may change an expression; neither change is silently accepted merely because a tool can process it.

#### The Integrated Process Cycle

<a id="1"></a>The [integrated process](https://doi.org/10.1097/JMQ.0000000000000137) describes 12 phases of co-developing written and computable guidelines, with communication and evaluation throughout. The simplified diagram below is an original implementation-oriented summary, not a reproduction of the published 12-phase model. [Boxwala et al.](https://doi.org/10.1136/amiajnl-2011-000334) provide the foundational layered-representation approach.

<div style="clear: both;">
  <img src="cpg-method-handoff.svg" alt="Clinical authors and knowledge engineers exchange reviewed work products with local implementors and evaluators." class="img-responsive center-block" width="1000"/>
</div>

| Review handoff | Sender provides | Receiver checks |
| --- | --- | --- |
| Guideline → semi-structured specification | Recommendation, source, ratings, rationale, scope | Concepts, applicability, timing, exceptions, actions, and unanswered questions |
| Specification → computable artifacts | Reviewed data dictionary, criteria, example cases | Appropriate FHIR profiles, terminology, expressions, dependencies, and behavior |
| Artifacts → local implementation | Versioned package, tests, capabilities and known limits | Data mappings, supported interfaces, workflow, authorization, and operational ownership |
| Implementation → revision | Observed defects, workload, usage, outcomes and context | Whether to change clinical guidance, formal artifacts, local mapping, or workflow |
{:.grid}

### CPG Content and Related Derivatives

Use [CPGRecommendationDefinition](StructureDefinition-cpg-recommendationdefinition.html), [CPGStrategyDefinition](StructureDefinition-cpg-strategydefinition.html), and [CPGPathwayDefinition](StructureDefinition-cpg-pathwaydefinition.html) for the respective PlanDefinition roles. Patient-specific requests and records are separate from these definitions.

Potential downstream products include CDS, forms, patient metrics, population measures, and reporting. Each has its own information and validation needs. Reusing concepts or expressions does not make a recommendation and a population measure equivalent. See [knowledge assets](documentation-approach-06-02-knowledge-assets.html) and [derivative and related assets](documentation-approach-12-07-cpg-derivative-and-related-assets.html) for their owning definitions.

### Value of Computable Guideline Artifacts to Stakeholders

The intended value is reduced repeated interpretation and clearer reuse, implementation, and feedback. Evaluate those objectives rather than assuming them. CDS Connect experience documents the need for trust, evidence transparency, and local technical/staff support even when artifacts are publicly shared. [Dhopeshwarkar et al., 2023](https://doi.org/10.1055/s-0043-1769911).

Define evaluation of the development process, product quality, and implementation outcomes separately, following the [evaluation framework](https://doi.org/10.1097/JMQ.0000000000000140). Continue to the [engineering lifecycle](documentation-approach-05-knowledge-engineering-overview.html) or the [implementation recipe](methodology.html).

<a id="2"></a>**Foundational reference:** Boxwala AA, Rocha BH, Maviglia S, et al. A multi-layered framework for disseminating knowledge for computer-based decision support. *JAMIA*. 2011;18(Suppl 1):i132–i139. [Publication](https://doi.org/10.1136/amiajnl-2011-000334).
