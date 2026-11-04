Use this topic to choose the clinical capabilities an implementation will deliver. Start with the people, decisions, and workflow being supported; select the data, logic, and integration needed for those capabilities.

### Levels of Enablement

The guide uses *levels of enablement* to describe increasingly extensive implementation capabilities. They are a planning vocabulary. Feature-level conformance and its validation remain under development, as described in [Conformance](documentation-conformance.html#conformance-testing).

| Capability | What the user receives | Implementation work to plan |
| --- | --- | --- |
| Searchable contextual narrative | Relevant guideline text found in a library or search | Content indexing, source and version visibility |
| Narrative delivered in context | Guidance at an appropriate workflow point | Context matching and a delivery mechanism |
| Narrative with patient information | Guidance alongside a patient summary | Data retrieval, mapping, and presentation |
| Actionable intervention | A proposed activity the user can consider | Logic execution, supporting information, acceptance and authorization workflow |
| Actionable summary view | Data, recommendations, and interaction in one view | Application or form behavior, missing-data handling, and state refresh |
| EHR import of content | Capabilities implemented in the receiving EHR | Supported artifact subset, translation or native execution, and local tests |
| Deep EHR integration with a CDS service | Guidance connected to local tasks and clinical processes | Trigger support, service behavior, action handling, and operational ownership |
| Derived capabilities | Metrics, reports, case summaries, or progress notes | Additional definitions, data flows, permissions, and evaluation |
{:.grid}

A guideline can support several capabilities at once, and a local implementation can deliver a useful subset. A higher row count is not evidence of better care. Select capabilities that fit the clinical task, and evaluate the resulting intervention.

### Describe the chosen scope

Record which capabilities are supported, which data and artifact versions they use, how they are delivered, and which local behavior remains outside the implementation. Include the tests and reviews used to assess each capability. For example, rendering a CDS Hooks card is different from accepting its suggested action, and neither establishes that the action was completed.

General CDS evidence supports evaluating workflow fit and actionable support; it does not prescribe one universal delivery method. See the [CDS evidence topic](documentation-approach-04-03-6S-evidence-pyramid-and-learning-health-systems.html#cds-implementation-evidence).

Continue with [execution choices](documentation-approach-09-methods-of-implementation.html), [integration choices](documentation-approach-10-mechanisms-of-integration.html), and the [L4 checklist](clinical-guidelines-development-L4-checklist.html). Keep enablement choices distinct from representation levels, functional tiers, and the formal profiles against which conformance is assessed.
