Knowledge representation makes a guideline's clinical intent explicit enough to review, share and implement. Begin by identifying the required work products and their relationships; do not choose a notation or engine before agreeing on meaning.

<a id="levels-of-knowledge-representation-framingdocumentation-approach-06-01-levels-of-knowledge-representationhtml"></a>

### Levels of Knowledge Representation Framing

[Four representation levels](documentation-approach-06-01-levels-of-knowledge-representation.html) help describe the handoff: L1 narrative, L2 semi-structured models, L3 computable artifacts and L4 local executable implementation. They are a continuum, not certification grades. The same recommendation can have several representations under review at once.

#### Approach

Choose the next page by the question you need to answer:

| Question | Reference | Useful output |
|---|---|---|
| What is human-readable versus computable versus locally running? | [Levels](documentation-approach-06-01-levels-of-knowledge-representation.html) | An explicit representation and handoff |
| What belongs in data, logic or forms? | [Functional tiers](documentation-approach-07-tiers-of-functionality.html) | A responsibility boundary |
| What work products span both dimensions? | [Levels by tiers](documentation-approach-08-levels-of-representation-by-tiers-of-functionality.html) | A scoped artifact inventory |
| How are artifacts identified, related and maintained? | [Knowledge assets](documentation-approach-06-02-knowledge-assets.html) | Versioned content and dependency records |
| Which exact FHIR resources/profiles express the model? | [Knowledge architecture](documentation-approach-06-03-knowledge-architecture.html) | A resource and reference map |
| How do we produce and validate those artifacts? | [Methodology](methodology.html) | A reviewed content package |

<a id="tiers-of-functionalitydocumentation-approach-07-tiers-of-functionalityhtml"></a>

#### Tiers of Functionality

[Data, clinical logic and forms](documentation-approach-07-tiers-of-functionality.html) are responsibilities at each representation level. They are separate from the [Case](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-case), [Plan](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-plan), and [Workflow](documentation-approach-12-08-conceptual-knowledge-architecture-index.html#concept-workflow) concepts, which distinguish patient description, recommended care and care delivery.

<a id="levels-of-representation-by-tiers-of-functionalitydocumentation-approach-08-levels-of-representation-by-tiers-of-functionalityhtml"></a>

#### Levels of Representation by Tiers of Functionality

The [matrix](documentation-approach-08-levels-of-representation-by-tiers-of-functionality.html) uses concrete work products rather than treating every guideline as an identical pipeline. A service that evaluates recorded data may not need a form; an interactive implementation may need form generation and extraction as well as the same clinical logic.

<a id="knowledge-assetsdocumentation-approach-06-02-knowledge-assetshtml"></a>

### Knowledge Assets

A [knowledge asset](documentation-approach-06-02-knowledge-assets.html) is a managed piece of guideline content, such as a profile, value set, logic library or recommendation definition. Its clinical content, identity, version, dependencies and intended usage travel together.

#### Asset Metamodel

Use the applicable FHIR resource and profile to determine the structure and constraints. A profile and an instance conforming to it have different roles.

#### Content

State the clinical definitions, expressions and activities the artifact conveys. Review content meaning independently of structural validation.

#### Asset Metadata

Identify the source, publisher/steward, status, version, usage context, rights and relationships. Metadata supports discovery and review; it is not authorization to execute clinical actions.

#### Expressions (and/or Languages)

Use expressions for computations and conditions, with their model, parameters and dependencies explicit. See [Libraries](libraries.html) for CQL-related expectations.

#### Declarations

Use resource structure to declare activities and relationships, then connect expressions where computation is required.

#### Composite Assets

Assemble reusable components through supported references and package dependencies rather than assuming all content is nested in a single resource.

#### Derived Assets

Trace a measure, summary or other derivative to its source while validating its own purpose and interpretation.

#### Translation Within and Between Knowledge Representations

Check that meaning and evaluated behavior survive translation. A changed notation is not proof of equivalent semantics.

#### Curating and Managing Knowledge Assets in a Large Corpus (Knowledge Base)

Keep reviewed releases, dependency versions and retirement/update decisions traceable. Shared dependencies require impact review when they change.

<a id="knowledge-architecturedocumentation-approach-06-03-knowledge-architecturehtml"></a>

### Knowledge Architecture

The [FHIR architecture](documentation-approach-06-03-knowledge-architecture.html) maps these work products to resource types and formal profiles. The [conceptual architecture](documentation-approach-12-conceptual-knowledge-architecture.html) explains the domain distinctions behind those mappings.

### Choose artifact representations {#choose-artifacts}

Start with the clinical capability and identify the data, logic, and proposed activities it needs. Add workflow, forms, summaries, and measurement as the scope requires.

| Work product | Typical FHIR representation | Review question |
|---|---|---|
| Clinical feature definition | StructureDefinition profiled as CPGCaseFeatureDefinition | Does it convey the intended meaning, time and terminology? |
| Terminology | CodeSystem, ValueSet, mappings where appropriate | Are definitions and versions suitable for the intended setting? |
| Computation | Library containing/referencing expressions | Are model, inputs, dependencies and unknown values handled explicitly? |
| Proposed activity template | ActivityDefinition | Can evaluation construct the intended request? |
| Recommendation/strategy/pathway | PlanDefinition using the appropriate CPG profile | Are conditions, references and relationships allowed and meaningful? |
| Interaction | Questionnaire and supported expressions | Can information be collected/confirmed without redefining clinical logic? |
| Summary/measurement | GraphDefinition/Composition or Measure/MeasureReport as appropriate | Are scope, time and interpretation stated? |
{:.grid}

Use [Profiles](profiles.html), [Terminology](terminology.html), and [Libraries](libraries.html) to check the formal contracts.
