This page was reorganized and editorially revised in this version of the guide (see [FHIR-59639](https://jira.hl7.org/browse/FHIR-59639) in the [change log](changes.html)).
{:.modified-content}

Knowledge representation is a surrogate, a substitute for the thing itself, that allows for reasoning (human and computational) about the “thing”. A knowledge representation may be thought of on a continuum of successive degrees of readability, of ability to reason over, and formalism (e.g., to compute).

In this section we will cover:

*   [Levels of Representation Framework (degrees of formalism/ computability)](documentation-approach-06-01-levels-of-knowledge-representation.html)
*   [Tiers of Functionality](documentation-approach-07-tiers-of-functionality.html)
*   [Levels of Representation by Tiers of Functionality](documentation-approach-08-levels-of-representation-by-tiers-of-functionality.html)
*   [Knowledge Assets (discrete representations with a purpose)](documentation-approach-06-02-knowledge-assets.html)
    *   [Asset Metadata (information about the assets and knowledge base)](https://www.hl7.org/fhir/clinicalreasoning-knowledge-artifact-representation.html#metadata)
*   [Knowledge Architecture (designing and defining the types and nature of assets)](documentation-approach-06-03-knowledge-architecture.html)

### Levels of Knowledge Representation

Guideline content moves through levels of representation: narrative (L1), semi-structured (L2), structured and computable (L3), and executable in a real-world system (L4). The levels are a continuum, not rigid categories. See [Levels of Knowledge Representation](documentation-approach-06-01-levels-of-knowledge-representation.html).

### Tiers of Functionality

Each level can be broken down into data, logic, and user interface tiers. See [Tiers of Functionality](documentation-approach-07-tiers-of-functionality.html) and [Levels of Representation by Tiers of Functionality](documentation-approach-08-levels-of-representation-by-tiers-of-functionality.html).

### Knowledge Assets

Knowledge assets (an artifact is an instance of an asset) keep domain logic separate from other system logic. See [Knowledge Assets](documentation-approach-06-02-knowledge-assets.html).

### Knowledge Architecture

Knowledge architecture defines the types and scopes of assets, their metadata, and how they relate to one another. See [Knowledge Architecture](documentation-approach-06-03-knowledge-architecture.html).