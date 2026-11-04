The [Case](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case) is the patient information relevant to a guideline. This page explains how to define that information and distinguish recorded facts, clinical assessments and computational inferences. The formal [CPGCase](StructureDefinition-cpg-case.html) is an EpisodeOfCare profile for enrollment; it is not a replacement for the patient's clinical resources.

### Case Features

A [Case Feature](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-feature) is a clinically meaningful item used to describe the patient: a measurement, condition, request, exposure, assessment or derived state. A [CPGCaseFeatureDefinition](StructureDefinition-cpg-casefeaturedefinition.html) is a StructureDefinition describing the expected representation of that feature. The patient-specific value is a conforming clinical resource, not a StructureDefinition instance containing patient data.

For each feature, specify clinical meaning, terminology, units, relevant time, source, expected multiplicity and selection rule. “Weight” alone does not say whether to use an admission measurement, the most recent result or a value from a particular encounter. Computability also depends on what to do with missing, stale or conflicting records.

<div style="clear: both;">
  <img src="cpg-model-case-features.svg" alt="Recorded patient facts feed descriptive logic, producing a derived patient feature that can support a recommendation" class="img-responsive" width="1000"/>
</div>

*Descriptive inference. Original illustration; an inferred value can be evaluated transiently or recorded with its sources. Recording and clinical assessment are separate actions.*

### Case Features from Clinician Assessments

Some features require a clinician's assessment rather than a calculation. Preserve the distinction between the observations shown to the clinician, a computed suggestion and the assessment the clinician documents. Use the resource appropriate to the information, such as ClinicalImpression or Observation, and retain author and time context.

For example, the heart-failure material in [the CHF example](examples-chf.html) illustrates related observations and assessed states. It is a modeling example, not a rule that all aspects of hemodynamic status can be inferred from a small set of measurements.

#### Separation of Form Logic from Patient Descriptive Logic and Clinical Decision Logic

Keep patient descriptive expressions scoped to case features and decision expressions scoped to recommendations. A questionnaire can reuse both, but its item visibility or navigation logic must not become the only definition of a clinical concept. [Interactive CDS](interactive-cds.html) explains generation, population and extraction when information needs to be collected or confirmed.

### Derived or Inferred Case Features

Derived features include calculations, temporal summaries and inferred states. Their expressions can depend on other inferred features; retain that dependency chain so that a reviewer can explain the result and test the effect of a changed input. The feature definition supports `inferenceExpression`, `assertionExpression` and `featureExpression` extensions for the appropriate computational roles.

| Kind | Example | Evidence to retain |
|---|---|---|
| Recorded fact | A documented measurement | Source record, units and effective time |
| Clinical assessment | A documented clinician judgment | Assessor, time and supporting information |
| Derived feature | A calculated change over a stated interval | Expression/version, selected inputs and time context |
| Persisted inference | A calculation stored as an Observation | Its computational origin as well as its recorded representation |

A persisted inference becomes available as a recorded fact, but persistence does not erase its computational origin. Likewise, a documented value may also have a calculation available for comparison. Define how conflicting sources are reconciled rather than treating them as interchangeable.

#### Separating Patient Descriptive Logic from Clinical Decision Logic

A feature answers “what is the patient's state?” A recommendation answers “what activity should be considered given that state?” Keep the calculation of a score separate from the threshold and clinical conditions for a proposed action. This permits reuse by another recommendation, a summary or a metric while preserving the feature's meaning.

Test explicit positive and negative facts, missing values, boundary values, time selection and inconsistent inputs. A missing record is not proof that a condition is absent or an activity was not performed.

### Case Feature Groups

A [Case Feature Group](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-feature-group) collects related information for a particular purpose, such as supporting a recommendation or showing an inference's inputs. Use the applicable GraphDefinition-based [summary definitions](StructureDefinition-cpg-casesummarydefinition.html) and Composition-based summaries where those contracts fit; do not assume every logical group needs a new resource.

### Case Feature Relationships

A [Case Feature Relationship](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-feature-relationship) describes how features relate. Distinguish “derived from,” “supports this recommendation,” “recorded during this encounter,” and “fulfills this request.” These relationships carry different meanings and use different resource elements or extensions. A shared code or similar label is insufficient to establish equivalence. Terminology alignment experience in [Pretty et al.](https://doi.org/10.1136/bmjhci-2022-100691) illustrates why ambiguous and composite data elements need clinical review.

### Case Summary

A [Case Summary](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case-summary) presents selected patient information. A [CPGCaseSummaryDefinition](StructureDefinition-cpg-casesummarydefinition.html) defines the feature graph relevant to a guideline. A [CPGCaseSummary](StructureDefinition-cpg-casesummary.html) is the corresponding Composition-based patient summary. State its scope and time; it is a selected view, not a claim that the entire patient record is complete.

Continue with [care plans](documentation-approach-12-05-cpg-careplan.html) to connect these features to proposals and documented care, or [profiles](profiles.html#content-profiles) to define the interoperability and computability contracts.
