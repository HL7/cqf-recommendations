A knowledge asset is a managed piece of guideline content. Here, “asset” and “artifact” are often used interchangeably; specify whether you mean a profile, an instance of a knowledge resource or a patient-specific result when that distinction affects implementation.

### Asset Metamodel

The base FHIR resource and its selected profiles establish the structure and constraints for an artifact. StructureDefinition defines profiles and extensions; a PlanDefinition or Library instance then carries particular guideline content. A model describes allowed content, while an artifact supplies that content.

### Content

Content includes clinical definitions, coded concepts, expressions, actions and their relationships. It conforms to the applicable structure while preserving the intended clinical meaning. Structural validity is necessary for interoperable representation but does not establish correct interpretation, executable support or clinical suitability.

### Asset Metadata

Use metadata to answer the practical questions a downstream implementor needs to resolve:

| Question | Metadata or record to examine |
|---|---|
| Which artifact is this? | Canonical `url` where supported, artifact type and business `version` |
| Which local resource record did I retrieve? | Resource `id`, server location and `meta.versionId`; these are not the canonical business identity |
| Who maintains it? | Publisher, contact, authors/reviewers and governance documentation |
| Is it intended for this use? | Status, jurisdiction, use context, topic and effective/review information where supported |
| What supports its meaning? | Guideline/evidence citations, derivation and other related artifacts |
| What else is needed? | Library, terminology, profile and package dependencies, including their versions |
| Can it be used or redistributed? | Copyright/license and the terms of referenced material |

Not every resource has identical metadata fields. Use the applicable resource/profile and documented relationships rather than inventing common elements. Artifact lifecycle status, such as draft or active, is separate from a local site's decision to enable it. Likewise, descriptive ownership metadata does not enforce patient-data access or clinical-action permissions.

Preserve provenance for both knowledge and the patient information produced with it. A result's source inputs, effective time and relevant expression/artifact version help explain why it was produced. The appropriate representation depends on the clinical resource and implementation contract.

### Expressions (and/or Languages)

An expression computes a value or condition; CQL is used for clinical logic within this guide's scope. A Library organizes logic, model use, parameters and dependencies. Consult [Libraries](libraries.html) for the required representations and profiles.

External functions or additional languages need explicit runtime support. A language's ability to declare an external function does not mean a portable CQL artifact can execute arbitrary Java, Python or network calls in every engine. Document those dependencies and validate the target implementation.

### Declarations

A declaration states structure or relationships without prescribing every execution detail. PlanDefinition declares actions and their conditions/relationships; ActivityDefinition supplies activity content and patient-dependent values can be computed by expressions. [Processing semantics](documentation-approach-09-methods-of-implementation.html) and the operation contract determine how a supported processor applies them.

### Composite Assets

A composite assembles other artifacts through supported references and dependencies. A [recommendation](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-recommendation) can combine clinical logic and an activity definition; a [strategy](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-strategy) can group recommendations. The [CPG profile relationships](documentation-approach-12-03-cpg-plan.html) constrain which targets are valid. Composition of knowledge artifacts is distinct from the FHIR Composition resource used for clinical documents/summaries.

### Derived Assets

A derivative reuses or adapts another asset for a different purpose, such as a measure derived from recommendation concepts. Record what was reused and what changed. The derivative can have different populations, time windows or interpretation; source reuse alone does not validate those decisions.

### Translation Within and Between Knowledge Representations

Equivalent representations are expected to preserve the relevant meaning and behavior for the same inputs. This is a claim to demonstrate, not a consequence of using standardized notations. Compare reviewed examples, boundary conditions and missing-data behavior across the source and target; retain known limitations.

### Release and maintain the dependency set

<div style="clear: both;">
  <img src="cpg-model-release.svg" alt="A versioned content package is adapted into a reviewed local release, then evaluated during operation; changes trigger impact review" class="img-responsive" width="1000"/>
</div>

*Release responsibility. Original illustration; a local release records the selected content and adaptations rather than overwriting the identity of its source.*

Record the exact artifacts and dependencies used by a release, its tests, known limitations and steward. When a shared value set, model or library changes, assess the dependent recommendations and local implementations. [Wright et al.](https://doi.org/10.1093/jamia/ocx106) found dependency and terminology changes among observed CDS malfunction mechanisms; their cases do not establish a failure rate for this guide.

See [methodology packaging](methodology.html#packaging) for assembling content and the [L3/L4 checklists](checklists.html) for review evidence.
